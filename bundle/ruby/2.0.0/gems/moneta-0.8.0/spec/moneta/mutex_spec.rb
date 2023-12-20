# coding: binary
# Generated by generate-specs
require 'helper'

describe_moneta "mutex" do
  def features
    []
  end

  def new_store
    Moneta.new(:Memory, logger: {file: File.join(make_tempdir, 'mutex.log')})
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'

  it 'should have #lock' do
    mutex = Moneta::Mutex.new(store, 'mutex')
    mutex.lock.should be_true
    mutex.locked?.should be_true
    expect do
     mutex.lock
    end.to raise_error(RuntimeError)
    expect do
     mutex.try_lock
    end.to raise_error(RuntimeError)
    mutex.unlock.should be_nil
    mutex.locked?.should be_false
  end

  it 'should have #enter' do
    mutex = Moneta::Mutex.new(store, 'mutex')
    mutex.enter.should be_true
    mutex.locked?.should be_true
    expect do
     mutex.enter
    end.to raise_error(RuntimeError)
    expect do
     mutex.try_enter
    end.to raise_error(RuntimeError)
    mutex.leave.should be_nil
    mutex.locked?.should be_false
  end

  it 'should lock with #lock' do
    a = Moneta::Mutex.new(store, 'mutex')
    b = Moneta::Mutex.new(store, 'mutex')
    a.lock.should be_true
    b.try_lock.should be_false
    a.unlock.should be_nil
  end

  it 'should have lock timeout' do
    a = Moneta::Mutex.new(store, 'mutex')
    b = Moneta::Mutex.new(store, 'mutex')
    a.lock.should be_true
    b.lock(1).should be_false
    a.unlock.should be_nil
  end

  it 'should have #synchronize' do
    mutex = Moneta::Mutex.new(store, 'mutex')
    mutex.synchronize do
      mutex.locked?.should be_true
    end
    mutex.locked?.should be_false
  end

end
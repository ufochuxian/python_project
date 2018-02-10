.class Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForwardBluetoothGattCallbackToWrapper"
.end annotation


# instance fields
.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field final mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "wrapperCallback"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;
    .param p2, "deviceWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 363
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    .line 364
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 365
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 370
    const-string v0, "Bluetooth"

    const-string v1, "wrapper onCharacteristicChanged."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onCharacteristicChanged(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)V

    .line 373
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 378
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onCharacteristicRead(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V

    .line 380
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onCharacteristicWrite(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V

    .line 387
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    invoke-virtual {v0, p2, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onConnectionStateChange(II)V

    .line 406
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onDescriptorRead(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V

    .line 394
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 399
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onDescriptorWrite(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V

    .line 401
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    invoke-virtual {v0, p2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onServicesDiscovered(I)V

    .line 411
    return-void
.end method

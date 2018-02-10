.class final Lorg/chromium/device/usb/ChromeUsbService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "org.chromium.device.ACTION_USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field mContext:Landroid/content/Context;

.field mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

.field mUsbManager:Landroid/hardware/usb/UsbManager;

.field mUsbServiceAndroid:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbServiceAndroid"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    .line 40
    iput-wide p2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    .line 41
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 42
    invoke-direct {p0}, Lorg/chromium/device/usb/ChromeUsbService;->registerForUsbDeviceIntentBroadcast()V

    .line 43
    const-string v0, "Usb"

    const-string v1, "ChromeUsbService created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/device/usb/ChromeUsbService;JLandroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/usb/ChromeUsbService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/device/usb/ChromeUsbService;->nativeDeviceAttached(JLandroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/device/usb/ChromeUsbService;JI)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/usb/ChromeUsbService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/device/usb/ChromeUsbService;->nativeDeviceDetached(JI)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/device/usb/ChromeUsbService;JIZ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/usb/ChromeUsbService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/device/usb/ChromeUsbService;->nativeDevicePermissionRequestComplete(JIZ)V

    return-void
.end method

.method private close()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/device/usb/ChromeUsbService;->unregisterForUsbDeviceIntentBroadcast()V

    .line 78
    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/device/usb/ChromeUsbService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usbServiceAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbService;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/usb/ChromeUsbService;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private getDevices()[Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 54
    .local v0, "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private native nativeDeviceAttached(JLandroid/hardware/usb/UsbDevice;)V
.end method

.method private native nativeDeviceDetached(JI)V
.end method

.method private native nativeDevicePermissionRequestComplete(JIZ)V
.end method

.method private openDevice(Lorg/chromium/device/usb/ChromeUsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 2
    .param p1, "wrapper"    # Lorg/chromium/device/usb/ChromeUsbDevice;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 60
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    return-object v1
.end method

.method private registerForUsbDeviceIntentBroadcast()V
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lorg/chromium/device/usb/ChromeUsbService$1;

    invoke-direct {v1, p0}, Lorg/chromium/device/usb/ChromeUsbService$1;-><init>(Lorg/chromium/device/usb/ChromeUsbService;)V

    iput-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "org.chromium.device.ACTION_USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private requestDevicePermission(Lorg/chromium/device/usb/ChromeUsbDevice;J)V
    .locals 6
    .param p1, "wrapper"    # Lorg/chromium/device/usb/ChromeUsbDevice;
    .param p2, "nativeCallback"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 66
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-wide v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/device/usb/ChromeUsbService;->nativeDevicePermissionRequestComplete(JIZ)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "org.chromium.device.ACTION_USB_PERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 71
    .local v1, "intent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private unregisterForUsbDeviceIntentBroadcast()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    return-void
.end method

.class Lorg/chromium/device/usb/ChromeUsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/device/usb/ChromeUsbService;->registerForUsbDeviceIntentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/usb/ChromeUsbService;


# direct methods
.method constructor <init>(Lorg/chromium/device/usb/ChromeUsbService;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 92
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-wide v2, v2, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-static {v1, v2, v3, v0}, Lorg/chromium/device/usb/ChromeUsbService;->access$000(Lorg/chromium/device/usb/ChromeUsbService;JLandroid/hardware/usb/UsbDevice;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-wide v2, v2, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/chromium/device/usb/ChromeUsbService;->access$100(Lorg/chromium/device/usb/ChromeUsbService;JI)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, "org.chromium.device.ACTION_USB_PERMISSION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService$1;->this$0:Lorg/chromium/device/usb/ChromeUsbService;

    iget-wide v2, v2, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    const-string v5, "permission"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lorg/chromium/device/usb/ChromeUsbService;->access$200(Lorg/chromium/device/usb/ChromeUsbService;JIZ)V

    goto :goto_0
.end method

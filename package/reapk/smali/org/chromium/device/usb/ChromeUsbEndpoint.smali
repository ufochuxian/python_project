.class final Lorg/chromium/device/usb/ChromeUsbEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field final mEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 2
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 27
    const-string v0, "Usb"

    const-string v1, "ChromeUsbEndpoint created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbEndpoint;)Lorg/chromium/device/usb/ChromeUsbEndpoint;
    .locals 1
    .param p0, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbEndpoint;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbEndpoint;-><init>(Landroid/hardware/usb/UsbEndpoint;)V

    return-object v0
.end method

.method private getAddress()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    return v0
.end method

.method private getAttributes()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v0

    return v0
.end method

.method private getInterval()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v0

    return v0
.end method

.method private getMaxPacketSize()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    return v0
.end method

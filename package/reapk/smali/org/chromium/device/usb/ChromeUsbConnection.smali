.class Lorg/chromium/device/usb/ChromeUsbConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field final mConnection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbConnection;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 27
    const-string v0, "Usb"

    const-string v1, "ChromeUsbConnection created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private close()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConnection;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 43
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbDeviceConnection;)Lorg/chromium/device/usb/ChromeUsbConnection;
    .locals 1
    .param p0, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbConnection;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbConnection;-><init>(Landroid/hardware/usb/UsbDeviceConnection;)V

    return-object v0
.end method

.method private getFileDescriptor()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConnection;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v0

    return v0
.end method

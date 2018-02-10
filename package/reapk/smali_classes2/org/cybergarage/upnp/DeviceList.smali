.class public Lorg/cybergarage/upnp/DeviceList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/upnp/Device;",
        ">;"
    }
.end annotation


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "deviceList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getDevice(I)Lorg/cybergarage/upnp/Device;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/DeviceList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    goto :goto_0
.end method

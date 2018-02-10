.class Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->initModule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceAdded(Lorg/cybergarage/upnp/Device;)V
    .locals 3
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    const/4 v2, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v0

    .line 109
    .local v0, "iconList":Lorg/cybergarage/upnp/IconList;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 110
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1, p1, v2}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$100(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Lorg/cybergarage/upnp/Device;I)V

    goto :goto_0
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$100(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Lorg/cybergarage/upnp/Device;I)V

    goto :goto_0
.end method

.method public deviceUpdated(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 119
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$100(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Lorg/cybergarage/upnp/Device;I)V

    goto :goto_0
.end method

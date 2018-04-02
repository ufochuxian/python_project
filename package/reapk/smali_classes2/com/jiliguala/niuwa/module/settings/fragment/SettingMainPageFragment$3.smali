.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->doCheckNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/a/g;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Lcom/jiliguala/niuwa/common/a/g;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->a:Lcom/jiliguala/niuwa/common/a/g;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;)V
    .locals 6
    .param p1, "globeTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    .prologue
    .line 721
    if-eqz p1, :cond_1

    .line 722
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->a:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 723
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget v3, v4, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->android_ver:I

    .line 724
    .local v3, "ver":I
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/t/a;->c()I

    move-result v2

    .line 725
    .local v2, "localVer":I
    if-le v3, v2, :cond_2

    .line 726
    const-string v1, ""

    .line 727
    .local v1, "downloadUrl":Ljava/lang/String;
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->channelUrls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;

    .line 728
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;->chl_download_link:Ljava/lang/String;

    .line 731
    .end local v0    # "channel":Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 732
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v4, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V

    .line 740
    .end local v1    # "downloadUrl":Ljava/lang/String;
    .end local v2    # "localVer":I
    .end local v3    # "ver":I
    :cond_1
    :goto_0
    return-void

    .line 736
    .restart local v2    # "localVer":I
    .restart local v3    # "ver":I
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 737
    const-string v4, "\u5f53\u524d\u5df2\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->a:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 717
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 709
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;->a(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;)V

    return-void
.end method

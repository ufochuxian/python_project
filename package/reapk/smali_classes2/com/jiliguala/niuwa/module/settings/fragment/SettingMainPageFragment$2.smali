.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$2;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 655
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->i()V

    .line 657
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/ae;->c()V

    .line 658
    return-void
.end method

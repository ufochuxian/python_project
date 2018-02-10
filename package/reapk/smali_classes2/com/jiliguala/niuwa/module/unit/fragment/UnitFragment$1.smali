.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$1;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeLongPressed()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onHomePressed()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$1;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissNoAnim(Landroid/support/v4/app/ag;)V

    .line 179
    return-void
.end method

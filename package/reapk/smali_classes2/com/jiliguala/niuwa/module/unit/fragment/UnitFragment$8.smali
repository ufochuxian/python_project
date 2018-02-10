.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showUnBindDescPopDialog(Z)V
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
    .line 1592
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$8;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$8;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1100(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)V

    .line 1601
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$8;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1100(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)V

    .line 1596
    return-void
.end method

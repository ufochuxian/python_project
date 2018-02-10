.class Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->listenSoftKeyBoard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$4;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$4;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->access$200(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/helper/LayoutHelper;->relayoutButtonWhileShowSoftKeyBoard(Landroid/view/View;I)V

    .line 329
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "keyBoardHeight"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$4;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->access$200(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/onboading/helper/LayoutHelper;->relayoutButtonWhileShowSoftKeyBoard(Landroid/view/View;I)V

    .line 323
    return-void
.end method

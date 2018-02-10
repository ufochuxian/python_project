.class Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->a(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->a(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;->a(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionFragment$a$1;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 60
    :cond_0
    return-void
.end method

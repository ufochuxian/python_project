.class Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;->a(Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment$a$1;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 67
    return-void
.end method

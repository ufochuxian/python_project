.class Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->initUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-static {v0, p3}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->access$000(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;I)V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->access$100(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->setSelectPos(I)V

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment$2;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;->access$100(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardChannelFragment;)Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$2;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$2;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->access$000(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;)V

    .line 216
    return-void
.end method

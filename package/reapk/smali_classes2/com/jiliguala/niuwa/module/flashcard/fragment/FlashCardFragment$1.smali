.class Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 114
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$1;->a:Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

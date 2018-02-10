.class Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$7;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$7;->a:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$700(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)V

    .line 542
    return-void
.end method

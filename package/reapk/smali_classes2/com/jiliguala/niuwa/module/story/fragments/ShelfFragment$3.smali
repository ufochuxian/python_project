.class Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment$3;->a:Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;->access$100(Lcom/jiliguala/niuwa/module/story/fragments/ShelfFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/jiliguala/niuwa/module/progress/ProgressActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$2;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$2;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$300(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

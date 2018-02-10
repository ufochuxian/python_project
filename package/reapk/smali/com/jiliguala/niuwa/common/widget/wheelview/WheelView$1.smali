.class Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 110
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->getScrollY()I

    move-result v1

    .line 111
    .local v1, "newY":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->g:I

    sub-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->g:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v4, v4, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    rem-int v2, v3, v4

    .line 113
    .local v2, "remainder":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->g:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v4, v4, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    div-int v0, v3, v4

    .line 114
    .local v0, "divided":I
    if-nez v2, :cond_0

    .line 115
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v4, v4, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    .line 117
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V

    .line 145
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :goto_0
    return-void

    .line 119
    .restart local v0    # "divided":I
    .restart local v2    # "remainder":I
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    new-instance v4, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;-><init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;II)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    new-instance v4, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$2;-><init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;II)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->getScrollY()I

    move-result v4

    iput v4, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->g:I

    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget-object v4, v4, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->h:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v5, v5, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->i:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

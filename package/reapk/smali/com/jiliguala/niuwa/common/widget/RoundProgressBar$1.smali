.class Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->a(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->c(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->a(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;F)F

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->c(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->d(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .line 194
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->c(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->d(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->d(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->a()V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->setProgress(I)V

    goto :goto_0
.end method

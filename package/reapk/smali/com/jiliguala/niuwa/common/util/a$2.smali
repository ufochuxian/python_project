.class final Lcom/jiliguala/niuwa/common/util/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/a$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/nineoldandroids/a/a;->i()V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 83
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/nineoldandroids/a/a;->i()V

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 77
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$2;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

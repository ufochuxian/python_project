.class Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->doPageTurnAnimation(FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$2;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/q;)V
    .locals 3
    .param p1, "valueAnimator"    # Lcom/nineoldandroids/a/q;

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/nineoldandroids/a/q;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 323
    .local v0, "f":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$2;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->setPageTurnFraction(F)V

    .line 326
    :cond_0
    return-void
.end method

.class Lcom/jiliguala/niuwa/common/util/a$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/a$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/a$5;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/a$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/a$5;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/a$5$1;->a:Lcom/jiliguala/niuwa/common/util/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$5$1;->a:Lcom/jiliguala/niuwa/common/util/a$5;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/a$5;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method

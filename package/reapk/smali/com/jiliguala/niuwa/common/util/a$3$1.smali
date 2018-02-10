.class Lcom/jiliguala/niuwa/common/util/a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/a$3;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/a$3;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/a$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/a$3;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/a$3$1;->a:Lcom/jiliguala/niuwa/common/util/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$3$1;->a:Lcom/jiliguala/niuwa/common/util/a$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/a$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method

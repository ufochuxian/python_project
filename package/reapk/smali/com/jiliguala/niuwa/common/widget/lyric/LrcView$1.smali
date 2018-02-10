.class Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;->a:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/q;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/q;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;->a:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {p1}, Lcom/nineoldandroids/a/q;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;F)F

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;->a:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    .line 188
    return-void
.end method

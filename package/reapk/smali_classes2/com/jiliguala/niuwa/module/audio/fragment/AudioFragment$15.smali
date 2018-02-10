.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onLyricLoadComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x320

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2089
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2090
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->a:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setLrcRows(Ljava/util/List;)V

    .line 2091
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setAlphaEnable(Z)V

    .line 2092
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    .line 2095
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v2

    .line 2096
    .local v2, "topAlphaAnimator":Lcom/nineoldandroids/a/q;
    invoke-virtual {v2, v10, v11}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 2097
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 2098
    .local v0, "bottomAlphaAnimator":Lcom/nineoldandroids/a/q;
    invoke-virtual {v0, v10, v11}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 2099
    new-instance v1, Lcom/nineoldandroids/a/d;

    invoke-direct {v1}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 2100
    .local v1, "sets":Lcom/nineoldandroids/a/d;
    new-array v3, v6, [Lcom/nineoldandroids/a/a;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 2101
    new-instance v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;

    invoke-direct {v3, p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;Lcom/nineoldandroids/a/d;)V

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 2125
    invoke-virtual {v1}, Lcom/nineoldandroids/a/d;->a()V

    .line 2126
    return-void

    .line 2095
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2097
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

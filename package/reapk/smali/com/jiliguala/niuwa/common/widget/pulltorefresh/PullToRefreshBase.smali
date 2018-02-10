.class public abstract Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$a;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final a:I = 0xc8

.field public static final b:I = 0x145

.field static final c:Z = false

.field static final d:Z = false

.field static final e:Ljava/lang/String; = "PullToRefresh"

.field static final f:F = 2.0f

.field static final g:I = 0xe1

.field static final h:Ljava/lang/String; = "ptr_state"

.field static final i:Ljava/lang/String; = "ptr_mode"

.field static final j:Ljava/lang/String; = "ptr_current_mode"

.field static final k:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final l:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final m:Ljava/lang/String; = "ptr_super"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Landroid/view/animation/Interpolator;

.field private E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

.field private G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

.field private H:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private J:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private K:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase",
            "<TT;>.f;"
        }
    .end annotation
.end field

.field n:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

.field private v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private x:Landroid/widget/FrameLayout;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 73
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 78
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    .line 79
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 80
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    .line 81
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    .line 82
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 73
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 78
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    .line 79
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 80
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    .line 81
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    .line 82
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 73
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 78
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    .line 79
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 80
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    .line 81
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    .line 82
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 112
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 73
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 78
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    .line 79
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 80
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    .line 81
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    .line 82
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 118
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 119
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method private final a(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1209
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(IJJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    .line 1210
    return-void
.end method

.method private final a(IJJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    .prologue
    .line 1213
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->K:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->K:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;->a()V

    .line 1218
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1224
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1228
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1231
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    .line 1233
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;IIJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->K:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;

    .line 1235
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1236
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->K:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;

    invoke-virtual {p0, v0, p4, p5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1241
    :cond_2
    :goto_1
    return-void

    .line 1220
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1221
    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1238
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->K:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$f;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1024
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    .line 1025
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1027
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q()V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;IJJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(IJJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v9, 0xe

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1044
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1050
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 1054
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    .line 1056
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1057
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->o:I

    .line 1060
    sget-object v3, Lcom/jiliguala/niuwa/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1062
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 1066
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1067
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1072
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/view/View;

    .line 1073
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1076
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 1077
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 1082
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1083
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1084
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1085
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1096
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    .line 1099
    :cond_3
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1100
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 1105
    :cond_4
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    .line 1106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1109
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->m()V

    .line 1110
    return-void

    .line 1046
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1087
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_5
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1088
    const-string v3, "ptrAdapterViewBackground"

    const-string v4, "ptrRefreshableViewBackground"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1090
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1091
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    .line 1244
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$3;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(IJJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    .line 1251
    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1182
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1187
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1184
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1192
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    .line 1194
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1031
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->H:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->H:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;->onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private r()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1113
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->c:[I

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1121
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1115
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->k()Z

    move-result v0

    goto :goto_0

    .line 1117
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->l()Z

    move-result v0

    goto :goto_0

    .line 1119
    :pswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->l()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private s()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1135
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1142
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->s:F

    .line 1143
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    .line 1147
    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->c:[I

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1154
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1155
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1159
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1161
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->d()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1162
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1163
    .local v4, "scale":F
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->c:[I

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1169
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->b(F)V

    .line 1173
    :goto_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1174
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 1179
    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .line 1137
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->r:F

    .line 1138
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    .line 1139
    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1149
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1150
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1151
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1165
    .restart local v4    # "scale":F
    :pswitch_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->b(F)V

    goto :goto_2

    .line 1175
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1176
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1147
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1163
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 173
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 567
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->E:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v0

    .line 568
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setBackgroundColor(I)V

    .line 569
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 570
    return-object v0
.end method

.method protected final a(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 967
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(IJ)V

    .line 968
    return-void
.end method

.method protected final a(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 898
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 900
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 902
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 903
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 904
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 908
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 909
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 910
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;

    .prologue
    .line 978
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(IJJLcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    .line 979
    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 645
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 439
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 670
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 555
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 556
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 563
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 564
    return-void
.end method

.method final varargs a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 520
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    .line 525
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->b:[I

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->J:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->J:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 548
    :cond_0
    return-void

    .line 527
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->j()V

    goto :goto_0

    .line 530
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->h()V

    goto :goto_0

    .line 533
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->i()V

    goto :goto_0

    .line 537
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Z)V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/CharSequence;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 474
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method protected a(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 704
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->g()V

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->g()V

    .line 711
    :cond_1
    if-eqz p1, :cond_3

    .line 712
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    if-eqz v1, :cond_2

    .line 715
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V

    .line 722
    .local v0, "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->c:[I

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 729
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ILcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    .line 739
    .end local v0    # "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;
    :goto_0
    return-void

    .line 725
    .restart local v0    # "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ILcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;)V

    goto :goto_0

    .line 733
    .end local v0    # "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$e;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(I)V

    goto :goto_0

    .line 737
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q()V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->c(I)V

    .line 148
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->c(I)V

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 129
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void

    .line 134
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected b(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 578
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;-><init>()V

    .line 580
    .local v0, "proxy":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 583
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 587
    :cond_1
    return-object v0
.end method

.method protected final b(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 987
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(IJ)V

    .line 988
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 679
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public b(Ljava/lang/CharSequence;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 493
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/CharSequence;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 507
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 243
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/d;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 253
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 265
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 351
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 354
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 479
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    .line 480
    return-void
.end method

.method public final getCurrentMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 611
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 615
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;
    .locals 1

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, v0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 631
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 635
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    return v0
.end method

.method public final getState()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 685
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->c:[I

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 696
    :goto_0
    return-void

    .line 687
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->f()V

    goto :goto_0

    .line 690
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->f()V

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 745
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->c:[I

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 756
    :goto_0
    return-void

    .line 747
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h()V

    goto :goto_0

    .line 750
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->h()V

    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected j()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 762
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    .line 766
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i()V

    .line 767
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->i()V

    .line 769
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(I)V

    .line 770
    return-void
.end method

.method protected abstract k()Z
.end method

.method protected abstract l()Z
.end method

.method protected m()V
    .locals 3

    .prologue
    .line 997
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1000
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1009
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1011
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p()V

    .line 1020
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 1021
    return-void

    .line 1020
    :cond_4
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 607
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    .line 608
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b()Z

    move-result v8

    if-nez v8, :cond_0

    .line 346
    :goto_0
    return v6

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 281
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 282
    :cond_1
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    goto :goto_0

    .line 286
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 287
    goto :goto_0

    .line 290
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 346
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    goto :goto_0

    .line 293
    :pswitch_1
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 294
    goto :goto_0

    .line 297
    :cond_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->r()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 303
    .local v4, "x":F
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 310
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    sub-float v2, v5, v6

    .line 311
    .local v2, "diff":F
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    sub-float v3, v4, v6

    .line 314
    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 316
    .local v0, "absDiff":F
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->o:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 317
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->k()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 318
    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    .line 319
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    .line 320
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 321
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 322
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 305
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    sub-float v2, v4, v6

    .line 306
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    sub-float v3, v5, v6

    .line 307
    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .line 324
    .restart local v0    # "absDiff":F
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->l()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 325
    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    .line 326
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    .line 327
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 328
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 329
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 337
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->r()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->s:F

    iput v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->r:F

    iput v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    .line 340
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    goto/16 :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 774
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 775
    check-cast v0, Landroid/os/Bundle;

    .line 777
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 778
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 780
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 781
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    .line 784
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 786
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .line 787
    .local v1, "viewState":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 788
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 792
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    .line 797
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 796
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 801
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 805
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    .line 807
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->w:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 811
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 812
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 814
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 823
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 826
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p()V

    .line 829
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(II)V

    .line 835
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$2;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 841
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 365
    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 372
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 384
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->s:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->r:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    move v0, v1

    .line 387
    goto :goto_0

    .line 374
    :pswitch_1
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->q:F

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->p:F

    .line 377
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->s()V

    move v0, v1

    .line 378
    goto :goto_0

    .line 394
    :pswitch_2
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    if-eqz v2, :cond_0

    .line 395
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->t:Z

    .line 397
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->u:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->H:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;

    if-eqz v2, :cond_5

    .line 398
    :cond_4
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 399
    goto :goto_0

    .line 403
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 404
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(I)V

    move v0, v1

    .line 405
    goto :goto_0

    .line 410
    :cond_6
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 412
    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final p()V
    .locals 7

    .prologue
    .line 848
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 850
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 851
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 852
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 853
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 855
    .local v1, "pBottom":I
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 892
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 893
    return-void

    .line 857
    :pswitch_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 858
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    .line 859
    neg-int v2, v0

    .line 864
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    .line 866
    neg-int v3, v0

    goto :goto_0

    .line 861
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 868
    :cond_1
    const/4 v3, 0x0

    .line 870
    goto :goto_0

    .line 873
    :pswitch_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 874
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    .line 875
    neg-int v4, v0

    .line 880
    :goto_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 881
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    .line 882
    neg-int v1, v0

    goto :goto_0

    .line 877
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 884
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 223
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 224
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 163
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->A:Z

    .line 164
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 928
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 929
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 931
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->C:Z

    if-eqz v1, :cond_0

    .line 932
    if-gez p1, :cond_1

    .line 933
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 951
    :cond_0
    :goto_0
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 959
    :goto_1
    return-void

    .line 934
    :cond_1
    if-lez p1, :cond_2

    .line 935
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 937
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->F:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 938
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->G:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 953
    :pswitch_0
    invoke-virtual {p0, v3, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 956
    :pswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 425
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 432
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 444
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 445
    return-void
.end method

.method public final setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 183
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 187
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->v:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 188
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->m()V

    .line 190
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->J:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;

    .line 449
    return-void
.end method

.method public final setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->H:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;

    .line 455
    return-void
.end method

.method public final setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->I:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->H:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;

    .line 461
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 467
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 468
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 238
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 239
    return-void

    .line 238
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 248
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->B:Z

    .line 249
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 258
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 261
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 486
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 487
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 500
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->c(Ljava/lang/CharSequence;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 501
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 511
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    .line 512
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 269
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->z:Z

    .line 270
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 204
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;->y:Z

    .line 205
    return-void
.end method

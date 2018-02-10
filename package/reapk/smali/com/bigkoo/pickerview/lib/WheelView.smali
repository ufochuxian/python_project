.class public Lcom/bigkoo/pickerview/lib/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/lib/WheelView$ACTION;
    }
.end annotation


# static fields
.field private static final M:I = 0x5

.field private static final Q:F = 0.8f

.field private static final R:F = 6.0f

.field static final q:F = 1.4f


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:J

.field F:I

.field private G:Landroid/view/GestureDetector;

.field private H:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:F

.field private N:I

.field private O:I

.field private P:I

.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field c:Lcom/bigkoo/pickerview/b/b;

.field d:Ljava/util/concurrent/ScheduledExecutorService;

.field e:Landroid/graphics/Paint;

.field f:Landroid/text/TextPaint;

.field g:Landroid/graphics/Paint;

.field h:Lcom/bigkoo/pickerview/a/c;

.field i:I

.field j:Z

.field k:I

.field l:I

.field m:F

.field n:I

.field o:I

.field p:I

.field r:Z

.field s:F

.field t:F

.field u:F

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    const/16 v1, 0xb

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    .line 99
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->L:F

    .line 101
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->E:J

    .line 107
    iput v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    .line 108
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    .line 109
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    .line 119
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/c$d;->pickerview_wheelview_textcolor_out:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    .line 120
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/c$d;->pickerview_wheelview_textcolor_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    .line 121
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/c$d;->pickerview_wheelview_textcolor_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    .line 123
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/c$e;->pickerview_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    .line 124
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/c$c;->pickerview_customTextSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->j:Z

    .line 125
    if-eqz p2, :cond_0

    .line 126
    sget-object v1, Lcom/bigkoo/pickerview/c$k;->pickerview:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/bigkoo/pickerview/c$k;->pickerview_pickerview_gravity:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    .line 128
    sget v1, Lcom/bigkoo/pickerview/c$k;->pickerview_pickerview_textColorOut:I

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    .line 129
    sget v1, Lcom/bigkoo/pickerview/c$k;->pickerview_pickerview_textColorCenter:I

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    .line 130
    sget v1, Lcom/bigkoo/pickerview/c$k;->pickerview_pickerview_dividerColor:I

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    .line 131
    sget v1, Lcom/bigkoo/pickerview/c$k;->pickerview_pickerview_textSize:I

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    .line 133
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method private a(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 434
    if-gez p1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v0

    add-int/2addr p1, v0

    .line 436
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(I)I

    move-result p1

    .line 441
    :cond_0
    :goto_0
    return p1

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v0

    sub-int/2addr p1, v0

    .line 439
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(I)I

    move-result p1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    const-string v0, ""

    .line 456
    .end local p1    # "item":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 453
    .restart local p1    # "item":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/bigkoo/pickerview/c/a;

    if-eqz v0, :cond_1

    .line 454
    check-cast p1, Lcom/bigkoo/pickerview/c/a;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/bigkoo/pickerview/c/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    .restart local p1    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 137
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->a:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/bigkoo/pickerview/lib/c;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/lib/c;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/bigkoo/pickerview/lib/b;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/lib/b;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->G:Landroid/view/GestureDetector;

    .line 140
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->G:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    .line 144
    iput v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    .line 147
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->c()V

    .line 149
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 462
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    sparse-switch v1, :sswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 464
    :sswitch_0
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    goto :goto_0

    .line 467
    :sswitch_1
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    goto :goto_0

    .line 470
    :sswitch_2
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    goto :goto_0

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 477
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 478
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    sparse-switch v1, :sswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 480
    :sswitch_0
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    goto :goto_0

    .line 483
    :sswitch_1
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    goto :goto_0

    .line 486
    :sswitch_2
    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    goto :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    .line 153
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 156
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    .line 159
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 160
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 161
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 162
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 163
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 172
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const/high16 v2, 0x40000000    # 2.0f

    .line 175
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->e()V

    .line 182
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->C:I

    .line 184
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->C:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    .line 186
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->C:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    .line 188
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->F:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    .line 190
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    .line 191
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    .line 192
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->u:F

    .line 194
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 195
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    .line 202
    :cond_1
    :goto_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    goto :goto_0

    .line 198
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    goto :goto_1
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 209
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 210
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v5}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 211
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v5, v0}, Lcom/bigkoo/pickerview/a/c;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "s1":Ljava/lang/String;
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v8, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 214
    .local v4, "textWidth":I
    iget v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    if-le v4, v5, :cond_0

    .line 215
    iput v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    .line 217
    :cond_0
    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    const-string v6, "\u661f\u671f"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v8, v7, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 218
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 219
    .local v3, "textHeight":I
    iget v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    if-le v3, v5, :cond_1

    .line 220
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "s1":Ljava/lang/String;
    .end local v3    # "textHeight":I
    .end local v4    # "textWidth":I
    :cond_2
    const v5, 0x3fb33333    # 1.4f

    iget v6, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    .line 224
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "iRet":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 579
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 580
    .local v2, "len":I
    new-array v3, v2, [F

    .line 581
    .local v3, "widths":[F
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 582
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 583
    aget v4, v3, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v0, v4

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v3    # "widths":[F
    :cond_0
    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Ljava/util/concurrent/ScheduledFuture;

    .line 251
    :cond_0
    return-void
.end method

.method protected final a(F)V
    .locals 7
    .param p1, "velocityY"    # F

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    .line 243
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bigkoo/pickerview/lib/a;

    invoke-direct {v1, p0, p1}, Lcom/bigkoo/pickerview/lib/a;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Ljava/util/concurrent/ScheduledFuture;

    .line 244
    return-void
.end method

.method a(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V
    .locals 7
    .param p1, "action"    # Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    .line 228
    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    if-ne p1, v0, :cond_1

    .line 229
    :cond_0
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    rem-float/2addr v0, v1

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    rem-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    .line 230
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    int-to-float v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 231
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    .line 237
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bigkoo/pickerview/lib/e;

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    invoke-direct {v1, p0, v2}, Lcom/bigkoo/pickerview/lib/e;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Ljava/util/concurrent/ScheduledFuture;

    .line 238
    return-void

    .line 233
    :cond_2
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    neg-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->c:Lcom/bigkoo/pickerview/b/b;

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/bigkoo/pickerview/lib/d;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/lib/d;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/bigkoo/pickerview/a/c;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->J:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    if-nez v2, :cond_1

    .line 430
    :cond_0
    return-void

    .line 305
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 307
    .local v20, "visibles":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->y:I

    .line 310
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v4}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v4

    rem-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-nez v2, :cond_4

    .line 315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    if-gez v2, :cond_2

    .line 316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    .line 318
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    .line 331
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    rem-float/2addr v2, v3

    float-to-int v15, v2

    .line 333
    .local v15, "itemHeightOffset":I
    const/4 v10, 0x0

    .line 334
    .local v10, "counter":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    if-ge v10, v2, :cond_9

    .line 335
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v10

    sub-int v13, v2, v3

    .line 338
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-eqz v2, :cond_6

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/bigkoo/pickerview/lib/WheelView;->a(I)I

    move-result v13

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v2, v13}, Lcom/bigkoo/pickerview/a/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v20, v10

    .line 349
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 351
    goto :goto_2

    .line 311
    .end local v10    # "counter":I
    .end local v13    # "index":I
    .end local v15    # "itemHeightOffset":I
    :catch_0
    move-exception v12

    .line 312
    .local v12, "e":Ljava/lang/ArithmeticException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v12    # "e":Ljava/lang/ArithmeticException;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    if-gez v2, :cond_5

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    .line 325
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    goto :goto_1

    .line 341
    .restart local v10    # "counter":I
    .restart local v13    # "index":I
    .restart local v15    # "itemHeightOffset":I
    :cond_6
    if-gez v13, :cond_7

    .line 342
    const-string v2, ""

    aput-object v2, v20, v10

    goto :goto_3

    .line 343
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v13, v2, :cond_8

    .line 344
    const-string v2, ""

    aput-object v2, v20, v10

    goto :goto_3

    .line 346
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v2, v13}, Lcom/bigkoo/pickerview/a/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v20, v10

    goto :goto_3

    .line 354
    .end local v13    # "index":I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    sub-int v11, v2, v3

    .line 360
    .local v11, "drawRightContentStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Ljava/lang/String;

    int-to-float v3, v11

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->u:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    .end local v11    # "drawRightContentStart":I
    :cond_a
    const/4 v10, 0x0

    .line 363
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    if-ge v10, v2, :cond_0

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v2, v2

    const v3, 0x3fb33333    # 1.4f

    mul-float v14, v2, v3

    .line 368
    .local v14, "itemHeight":F
    int-to-float v2, v10

    mul-float/2addr v2, v14

    int-to-float v3, v15

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->C:I

    int-to-double v4, v4

    div-double v18, v2, v4

    .line 370
    .local v18, "radian":D
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double v4, v18, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v8, v2

    .line 372
    .local v8, "angle":F
    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v2, v8, v2

    if-gez v2, :cond_b

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_c

    .line 373
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 428
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 429
    goto :goto_4

    .line 376
    :cond_c
    aget-object v2, v20, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, "contentText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v9, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 380
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/bigkoo/pickerview/lib/WheelView;->b(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-double v2, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v0, v2

    move/from16 v17, v0

    .line 384
    .local v17, "translateY":F
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    sub-float v5, v5, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 390
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    sub-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v4, v4

    float-to-int v5, v14

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 395
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 396
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 426
    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 398
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 401
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    sub-float v5, v5, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 402
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 403
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    sub-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v4, v4

    float-to-int v5, v14

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 407
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 410
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    cmpl-float v2, v17, v2

    if-ltz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    .line 412
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->O:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    aget-object v3, v20, v10

    invoke-interface {v2, v3}, Lcom/bigkoo/pickerview/a/c;->a(Ljava/lang/Object;)I

    move-result v16

    .line 415
    .local v16, "preSelectedItem":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_d

    .line 416
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bigkoo/pickerview/lib/WheelView;->J:I

    goto/16 :goto_6

    .line 420
    .end local v16    # "preSelectedItem":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 421
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 422
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 423
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->F:I

    .line 494
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->d()V

    .line 495
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    invoke-virtual {p0, v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setMeasuredDimension(II)V

    .line 496
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->G:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 501
    .local v5, "eventConsumed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 533
    :pswitch_0
    if-nez v5, :cond_0

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 535
    .local v10, "y":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-float v11, v11

    sub-float/2addr v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-double v14, v11

    mul-double v8, v12, v14

    .line 536
    .local v8, "l":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    add-double/2addr v12, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    float-to-double v14, v11

    div-double/2addr v12, v14

    double-to-int v3, v12

    .line 538
    .local v3, "circlePosition":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    rem-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    rem-float v6, v11, v12

    .line 539
    .local v6, "extraOffset":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v3, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    mul-float/2addr v11, v12

    sub-float/2addr v11, v6

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->K:I

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/bigkoo/pickerview/lib/WheelView;->E:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x78

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 543
    sget-object v11, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V

    .line 551
    .end local v3    # "circlePosition":I
    .end local v6    # "extraOffset":F
    .end local v8    # "l":D
    .end local v10    # "y":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    .line 553
    const/4 v11, 0x1

    return v11

    .line 503
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->E:J

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:F

    goto :goto_0

    .line 509
    :pswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float v4, v11, v12

    .line 510
    .local v4, "dy":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:F

    .line 511
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v11, v11

    add-float/2addr v11, v4

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    .line 514
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-nez v11, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    neg-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    mul-float v7, v11, v12

    .line 516
    .local v7, "top":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    invoke-interface {v11}, Lcom/bigkoo/pickerview/a/c;->a()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    mul-float v2, v11, v12

    .line 517
    .local v2, "bottom":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    float-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L    # 0.3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    float-to-double v14, v7

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 518
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v11, v11

    sub-float v7, v11, v4

    .line 523
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v11, v11

    cmpg-float v11, v11, v7

    if-gez v11, :cond_3

    .line 524
    float-to-int v11, v7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    goto/16 :goto_0

    .line 519
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    float-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L    # 0.3

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    float-to-double v14, v2

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1

    .line 520
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v11, v11

    sub-float v2, v11, v4

    goto :goto_1

    .line 525
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v11, v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_0

    .line 526
    float-to-int v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    goto/16 :goto_0

    .line 546
    .end local v2    # "bottom":F
    .end local v4    # "dy":F
    .end local v7    # "top":F
    .restart local v3    # "circlePosition":I
    .restart local v6    # "extraOffset":F
    .restart local v8    # "l":D
    .restart local v10    # "y":F
    :cond_4
    sget-object v11, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->CLICK:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V

    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setAdapter(Lcom/bigkoo/pickerview/a/c;)V
    .locals 0
    .param p1, "adapter"    # Lcom/bigkoo/pickerview/a/c;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/c;

    .line 281
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->d()V

    .line 282
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    .line 283
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1
    .param p1, "currentItem"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    .line 272
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    .line 273
    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0
    .param p1, "cyclic"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    .line 259
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    .line 574
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/bigkoo/pickerview/b/b;)V
    .locals 0
    .param p1, "OnItemSelectedListener"    # Lcom/bigkoo/pickerview/b/b;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->c:Lcom/bigkoo/pickerview/b/b;

    .line 277
    return-void
.end method

.method public final setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 262
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->j:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    .line 264
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 267
    :cond_0
    return-void
.end method

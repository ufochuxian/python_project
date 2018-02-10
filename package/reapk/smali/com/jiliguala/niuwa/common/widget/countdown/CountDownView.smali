.class public Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/DecimalFormat;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Landroid/content/Intent;

.field private l:Ljava/lang/String;

.field private m:Lcom/jiliguala/niuwa/common/widget/countdown/a;

.field private n:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a:Ljava/text/DecimalFormat;

    .line 26
    const-class v0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v8, 0x1010098

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->j:Z

    .line 33
    new-instance v4, Landroid/os/Messenger;

    new-instance v5, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)V

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->n:Landroid/os/Messenger;

    .line 58
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/jiliguala/niuwa/services/TimerService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b007d

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    sget-object v4, Lcom/jiliguala/niuwa/R$styleable;->CountDownView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 63
    .local v3, "values":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 64
    .local v0, "numColorId":I
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 66
    .local v1, "unitColorId":I
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const v4, 0x7f090270

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "v":Landroid/view/View;
    const v4, 0x7f09026f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->c:Landroid/widget/TextView;

    .line 69
    const v4, 0x7f090271

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 70
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 73
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const v4, 0x7f09033f

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 75
    .restart local v2    # "v":Landroid/view/View;
    const v4, 0x7f09033d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->d:Landroid/widget/TextView;

    .line 76
    const v4, 0x7f090340

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const v4, 0x7f0904a2

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 82
    .restart local v2    # "v":Landroid/view/View;
    const v4, 0x7f0904a1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->e:Landroid/widget/TextView;

    .line 83
    const v4, 0x7f0904a3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 84
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    const v4, 0x7f090339

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 89
    .restart local v2    # "v":Landroid/view/View;
    const v4, 0x7f090338

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->f:Landroid/widget/TextView;

    .line 90
    const v4, 0x7f09033a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    return-wide p1
.end method

.method private a(J)V
    .locals 13
    .param p1, "millisInFuture"    # J

    .prologue
    .line 128
    move-wide v4, p1

    .line 129
    .local v4, "millis":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    .line 130
    .local v0, "days":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long/2addr v4, v10

    .line 131
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    .line 132
    .local v2, "hours":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long/2addr v4, v10

    .line 133
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    .line 134
    .local v6, "minutes":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long/2addr v4, v10

    .line 135
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    .line 137
    .local v8, "seconds":J
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->c:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 138
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->c:Landroid/widget/TextView;

    sget-object v11, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v11, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->d:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 142
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->d:Landroid/widget/TextView;

    sget-object v11, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v11, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_1
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->e:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 146
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->e:Landroid/widget/TextView;

    sget-object v11, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v11, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->e()V

    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(J)V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->m:Lcom/jiliguala/niuwa/common/widget/countdown/a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->m:Lcom/jiliguala/niuwa/common/widget/countdown/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/countdown/a;->a()V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    .line 159
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    const-string v2, "messenger"

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->n:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    const-string v2, "millis"

    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    const-string v2, "alarm_sound"

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    if-nez v0, :cond_0

    .line 216
    const-string v0, "currentMillis"

    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    :cond_0
    const-string v0, "isTimerRunning"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const-string v0, "isAlarmRunning"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    .line 175
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->clearAnimation()V

    .line 176
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 177
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    const-string v1, "isTimerRunning"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    .line 224
    const-string v1, "isAlarmRunning"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->j:Z

    .line 226
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    const-string v2, "messenger"

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->n:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->k:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->j:Z

    if-eqz v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->e()V

    .line 241
    :cond_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "currentMillis"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    .line 235
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    invoke-direct {p0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(J)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->b()V

    .line 184
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->h:J

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    .line 185
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(J)V

    .line 186
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->i:Z

    return v0
.end method

.method public getCurrentMillis()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    return-wide v0
.end method

.method public setAlarmSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->l:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1
    .param p1, "millisInFuture"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->g:J

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->a(J)V

    .line 124
    return-void
.end method

.method public setInitialTime(J)V
    .locals 1
    .param p1, "millisInFuture"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->h:J

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->setCurrentTime(J)V

    .line 113
    return-void
.end method

.method public setListener(Lcom/jiliguala/niuwa/common/widget/countdown/a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/countdown/a;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/countdown/CountDownView;->m:Lcom/jiliguala/niuwa/common/widget/countdown/a;

    .line 245
    return-void
.end method

.class public Lcom/jiliguala/niuwa/common/util/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/ad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/jiliguala/niuwa/common/util/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/ad;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/ad;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 166
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ad;->b()I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0, "selectedColor"    # Ljava/lang/String;
    .param p1, "unSelectedColor"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, -0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v6, [I

    .line 175
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 176
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 8
    .param p0, "originalStr"    # Ljava/lang/String;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "highLightColor"    # I

    .prologue
    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_0
    new-instance v4, Landroid/text/SpannableString;

    const-string v6, ""

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "string":Landroid/text/SpannableString;
    move-object v5, v4

    .line 139
    .end local v4    # "string":Landroid/text/SpannableString;
    .local v5, "string":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 126
    .end local v5    # "string":Ljava/lang/Object;
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    .restart local v4    # "string":Landroid/text/SpannableString;
    const/4 v6, 0x2

    invoke-static {p1, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 129
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 131
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 133
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 135
    .local v0, "end":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 137
    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    .line 135
    invoke-virtual {v4, v6, v3, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_2
    move-object v5, v4

    .line 139
    .restart local v5    # "string":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "et"    # Landroid/widget/EditText;

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 86
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public static a(Landroid/widget/EditText;I)V
    .locals 4
    .param p0, "et"    # Landroid/widget/EditText;
    .param p1, "delay"    # I

    .prologue
    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/common/util/ad$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/util/ad$a;-><init>(Landroid/widget/EditText;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()I
    .locals 3

    .prologue
    .line 150
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lcom/jiliguala/niuwa/common/util/ad;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 152
    add-int/lit8 v0, v1, 0x1

    .line 153
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    .line 154
    const/4 v0, 0x1

    .line 156
    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/common/util/ad;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    return v1
.end method

.method public static b(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v7

    .line 43
    .local v7, "x":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v8

    .line 46
    .local v8, "y":F
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 47
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 48
    .local v5, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 49
    .local v4, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 52
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 53
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 56
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 57
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    instance-of v9, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v9, :cond_0

    move-object v9, v3

    .line 63
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object v9, v3

    .line 64
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object v9, v3

    .line 65
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 66
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 78
    :cond_1
    return-void
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "et"    # Landroid/widget/EditText;

    .prologue
    .line 94
    if-nez p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 99
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/ad;->e(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/ad;->e(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 116
    .local v1, "width":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 117
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 118
    return-void
.end method

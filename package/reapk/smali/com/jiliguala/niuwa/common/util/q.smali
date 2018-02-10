.class public Lcom/jiliguala/niuwa/common/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/q$a;,
        Lcom/jiliguala/niuwa/common/util/q$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Lcom/jiliguala/niuwa/common/util/q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jiliguala/niuwa/common/util/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/q;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/q$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/q$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/q;-><init>()V

    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/common/util/q;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/jiliguala/niuwa/common/util/q$a;->a:Lcom/jiliguala/niuwa/common/util/q;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/View;Lcom/jiliguala/niuwa/common/util/q$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/jiliguala/niuwa/common/util/q$b;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/q;->b()V

    .line 33
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/g;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/util/q;->d:I

    .line 34
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    .line 35
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/util/q;->f:Lcom/jiliguala/niuwa/common/util/q$b;

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 46
    :goto_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    .line 47
    iput-object v2, p0, Lcom/jiliguala/niuwa/common/util/q;->f:Lcom/jiliguala/niuwa/common/util/q$b;

    .line 49
    :cond_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 54
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/q;->f:Lcom/jiliguala/niuwa/common/util/q$b;

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 64
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/q;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 67
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 70
    .local v0, "heightDiff":I
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/q;->c:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/jiliguala/niuwa/common/util/q;->d:I

    if-le v0, v3, :cond_2

    .line 71
    iput v0, p0, Lcom/jiliguala/niuwa/common/util/q;->c:I

    .line 75
    :cond_2
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/util/q;->b:Z

    if-eqz v3, :cond_3

    .line 78
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/q;->d:I

    if-gt v0, v3, :cond_0

    .line 79
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/util/q;->b:Z

    .line 80
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/q;->f:Lcom/jiliguala/niuwa/common/util/q$b;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/common/util/q$b;->a()V

    goto :goto_0

    .line 85
    :cond_3
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/q;->d:I

    if-le v0, v3, :cond_0

    .line 86
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/util/q;->b:Z

    .line 87
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/q;->f:Lcom/jiliguala/niuwa/common/util/q$b;

    iget v4, p0, Lcom/jiliguala/niuwa/common/util/q;->c:I

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/common/util/q$b;->a(I)V

    goto :goto_0
.end method

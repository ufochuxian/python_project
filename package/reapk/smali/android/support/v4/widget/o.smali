.class public final Landroid/support/v4/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/o$b;,
        Landroid/support/v4/widget/o$a;,
        Landroid/support/v4/widget/o$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/o$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v1, Landroid/support/v4/widget/o$b;

    invoke-direct {v1}, Landroid/support/v4/widget/o$b;-><init>()V

    sput-object v1, Landroid/support/v4/widget/o;->a:Landroid/support/v4/widget/o$c;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v1, Landroid/support/v4/widget/o$a;

    invoke-direct {v1}, Landroid/support/v4/widget/o$a;-><init>()V

    sput-object v1, Landroid/support/v4/widget/o;->a:Landroid/support/v4/widget/o$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "listPopupWindow"    # Ljava/lang/Object;
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 97
    sget-object v0, Landroid/support/v4/widget/o;->a:Landroid/support/v4/widget/o$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/o$c;->a(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

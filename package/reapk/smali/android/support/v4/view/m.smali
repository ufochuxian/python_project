.class public final Landroid/support/v4/view/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/m$d;,
        Landroid/support/v4/view/m$c;,
        Landroid/support/v4/view/m$b;,
        Landroid/support/v4/view/m$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 63
    new-instance v1, Landroid/support/v4/view/m$d;

    invoke-direct {v1}, Landroid/support/v4/view/m$d;-><init>()V

    sput-object v1, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$a;

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 65
    new-instance v1, Landroid/support/v4/view/m$c;

    invoke-direct {v1}, Landroid/support/v4/view/m$c;-><init>()V

    sput-object v1, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$a;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Landroid/support/v4/view/m$b;

    invoke-direct {v1}, Landroid/support/v4/view/m$b;-><init>()V

    sput-object v1, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/q;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 99
    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$a;

    invoke-interface {v0, p0}, Landroid/support/v4/view/m$a;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/q;)V
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/support/v4/view/q;

    .prologue
    .line 85
    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/m$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/m$a;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/q;)V

    .line 86
    return-void
.end method

.class public final Landroid/support/v4/content/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/m$d;,
        Landroid/support/v4/content/m$c;,
        Landroid/support/v4/content/m$b;,
        Landroid/support/v4/content/m$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final b:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final c:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final d:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final e:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final f:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final g:I = 0x4000

.field public static final h:I = 0x8000

.field private static final i:Landroid/support/v4/content/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .local v0, "version":I
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v1, Landroid/support/v4/content/m$d;

    invoke-direct {v1}, Landroid/support/v4/content/m$d;-><init>()V

    sput-object v1, Landroid/support/v4/content/m;->i:Landroid/support/v4/content/m$a;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v1, Landroid/support/v4/content/m$c;

    invoke-direct {v1}, Landroid/support/v4/content/m$c;-><init>()V

    sput-object v1, Landroid/support/v4/content/m;->i:Landroid/support/v4/content/m$a;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v1, Landroid/support/v4/content/m$b;

    invoke-direct {v1}, Landroid/support/v4/content/m$b;-><init>()V

    sput-object v1, Landroid/support/v4/content/m;->i:Landroid/support/v4/content/m$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 227
    sget-object v0, Landroid/support/v4/content/m;->i:Landroid/support/v4/content/m$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/m$a;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    .prologue
    .line 253
    sget-object v0, Landroid/support/v4/content/m;->i:Landroid/support/v4/content/m$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 270
    sget-object v0, Landroid/support/v4/content/m;->i:Landroid/support/v4/content/m$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/m$a;->b(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

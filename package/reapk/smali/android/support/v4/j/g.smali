.class public final Landroid/support/v4/j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/j/g$b;,
        Landroid/support/v4/j/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Locale;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static final d:Landroid/support/v4/j/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .local v0, "version":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 125
    new-instance v1, Landroid/support/v4/j/g$b;

    invoke-direct {v1}, Landroid/support/v4/j/g$b;-><init>()V

    sput-object v1, Landroid/support/v4/j/g;->d:Landroid/support/v4/j/g$a;

    .line 155
    :goto_0
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/support/v4/j/g;->a:Ljava/util/Locale;

    .line 157
    const-string v1, "Arab"

    sput-object v1, Landroid/support/v4/j/g;->b:Ljava/lang/String;

    .line 158
    const-string v1, "Hebr"

    sput-object v1, Landroid/support/v4/j/g;->c:Ljava/lang/String;

    return-void

    .line 127
    :cond_0
    new-instance v1, Landroid/support/v4/j/g$a;

    invoke-direct {v1}, Landroid/support/v4/j/g$a;-><init>()V

    sput-object v1, Landroid/support/v4/j/g;->d:Landroid/support/v4/j/g$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Locale;)I
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 152
    sget-object v0, Landroid/support/v4/j/g;->d:Landroid/support/v4/j/g$a;

    invoke-virtual {v0, p0}, Landroid/support/v4/j/g$a;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 138
    sget-object v0, Landroid/support/v4/j/g;->d:Landroid/support/v4/j/g$a;

    invoke-virtual {v0, p0}, Landroid/support/v4/j/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

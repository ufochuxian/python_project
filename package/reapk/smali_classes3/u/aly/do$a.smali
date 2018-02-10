.class Lu/aly/do$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lu/aly/do;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 27
    new-instance v0, Lu/aly/do;

    invoke-static {}, Lu/aly/do;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lu/aly/do;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lu/aly/dq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ua.db"

    const/4 v5, 0x1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lu/aly/do;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILu/aly/do$1;)V

    sput-object v0, Lu/aly/do$a;->a:Lu/aly/do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/do;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lu/aly/do$a;->a:Lu/aly/do;

    return-object v0
.end method

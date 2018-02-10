.class public final Lrx/internal/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field private static final b:I

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lrx/internal/util/i;->c()I

    move-result v0

    sput v0, Lrx/internal/util/i;->b:I

    .line 32
    sget v0, Lrx/internal/util/i;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lrx/internal/util/i;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lrx/internal/util/i;->c:Z

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lrx/internal/util/i;->b:I

    return v0
.end method

.method private static c()I
    .locals 3

    .prologue
    .line 66
    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

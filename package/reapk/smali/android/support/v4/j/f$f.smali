.class Landroid/support/v4/j/f$f;
.super Landroid/support/v4/j/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field public static final a:Landroid/support/v4/j/f$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Landroid/support/v4/j/f$f;

    invoke-direct {v0}, Landroid/support/v4/j/f$f;-><init>()V

    sput-object v0, Landroid/support/v4/j/f$f;->a:Landroid/support/v4/j/f$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/j/f$d;-><init>(Landroid/support/v4/j/f$c;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/j/g;->a(Ljava/util/Locale;)I

    move-result v0

    .line 251
    .local v0, "dir":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
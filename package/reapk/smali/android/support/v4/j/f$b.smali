.class Landroid/support/v4/j/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/j/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final a:Landroid/support/v4/j/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Landroid/support/v4/j/f$b;

    invoke-direct {v0}, Landroid/support/v4/j/f$b;-><init>()V

    sput-object v0, Landroid/support/v4/j/f$b;->a:Landroid/support/v4/j/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 183
    const/4 v2, 0x2

    .line 184
    .local v2, "result":I
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 185
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    invoke-static {v3}, Landroid/support/v4/j/f;->b(I)I

    move-result v2

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return v2
.end method

.class Landroid/support/v4/j/f$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Landroid/support/v4/j/f$a;

.field public static final b:Landroid/support/v4/j/f$a;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/support/v4/j/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/j/f$a;-><init>(Z)V

    sput-object v0, Landroid/support/v4/j/f$a;->a:Landroid/support/v4/j/f$a;

    .line 236
    new-instance v0, Landroid/support/v4/j/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/j/f$a;-><init>(Z)V

    sput-object v0, Landroid/support/v4/j/f$a;->b:Landroid/support/v4/j/f$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "lookForRtl"    # Z

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Landroid/support/v4/j/f$a;->c:Z

    .line 233
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "haveUnlookedFor":Z
    move v2, p2

    .local v2, "i":I
    add-int v0, p2, p3

    .local v0, "e":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 208
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    invoke-static {v5}, Landroid/support/v4/j/f;->a(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 207
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :pswitch_0
    iget-boolean v5, p0, Landroid/support/v4/j/f$a;->c:Z

    if-eqz v5, :cond_1

    move v3, v4

    .line 228
    :cond_0
    :goto_2
    return v3

    .line 213
    :cond_1
    const/4 v1, 0x1

    .line 214
    goto :goto_1

    .line 216
    :pswitch_1
    iget-boolean v5, p0, Landroid/support/v4/j/f$a;->c:Z

    if-eqz v5, :cond_0

    .line 219
    const/4 v1, 0x1

    .line 220
    goto :goto_1

    .line 225
    :cond_2
    if-eqz v1, :cond_3

    .line 226
    iget-boolean v5, p0, Landroid/support/v4/j/f$a;->c:Z

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_2

    .line 228
    :cond_3
    const/4 v3, 0x2

    goto :goto_2

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

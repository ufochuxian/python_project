.class public final Landroid/support/v4/widget/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ae$a;,
        Landroid/support/v4/widget/ae$b;,
        Landroid/support/v4/widget/ae$c;,
        Landroid/support/v4/widget/ae$d;,
        Landroid/support/v4/widget/ae$f;,
        Landroid/support/v4/widget/ae$e;,
        Landroid/support/v4/widget/ae$h;,
        Landroid/support/v4/widget/ae$g;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/widget/ae$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 276
    new-instance v0, Landroid/support/v4/widget/ae$f;

    invoke-direct {v0}, Landroid/support/v4/widget/ae$f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 278
    new-instance v0, Landroid/support/v4/widget/ae$e;

    invoke-direct {v0}, Landroid/support/v4/widget/ae$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    goto :goto_0

    .line 280
    :cond_1
    new-instance v0, Landroid/support/v4/widget/ae$h;

    invoke-direct {v0}, Landroid/support/v4/widget/ae$h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ae$g;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 437
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "imeOptions"    # I

    .prologue
    .line 323
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->b(Landroid/view/View;I)V

    .line 324
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 310
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;Landroid/content/ComponentName;)V

    .line 311
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/widget/ae$a;)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/widget/ae$a;

    .prologue
    .line 402
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;Landroid/support/v4/widget/ae$a;)V

    .line 403
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/widget/ae$c;)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/widget/ae$c;

    .prologue
    .line 347
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;Landroid/support/v4/widget/ae$c;)V

    .line 348
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 461
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 450
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    .line 451
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "iconify"    # Z

    .prologue
    .line 476
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;Z)V

    .line 477
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "inputType"    # I

    .prologue
    .line 336
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->c(Landroid/view/View;I)V

    .line 337
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .prologue
    .line 500
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->b(Landroid/view/View;Z)V

    .line 501
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 487
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ae$g;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "maxpixels"    # I

    .prologue
    .line 546
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->a(Landroid/view/View;I)V

    .line 547
    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 529
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ae$g;->c(Landroid/view/View;Z)V

    .line 530
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 510
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ae$g;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 538
    sget-object v0, Landroid/support/v4/widget/ae;->a:Landroid/support/v4/widget/ae$g;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ae$g;->d(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

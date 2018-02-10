.class public final Landroid/support/v4/widget/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ai$a;,
        Landroid/support/v4/widget/ai$d;,
        Landroid/support/v4/widget/ai$c;,
        Landroid/support/v4/widget/ai$e;,
        Landroid/support/v4/widget/ai$b;,
        Landroid/support/v4/widget/ai$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/ai$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 180
    new-instance v1, Landroid/support/v4/widget/ai$a;

    invoke-direct {v1}, Landroid/support/v4/widget/ai$a;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 182
    new-instance v1, Landroid/support/v4/widget/ai$d;

    invoke-direct {v1}, Landroid/support/v4/widget/ai$d;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    goto :goto_0

    .line 183
    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 184
    new-instance v1, Landroid/support/v4/widget/ai$c;

    invoke-direct {v1}, Landroid/support/v4/widget/ai$c;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    goto :goto_0

    .line 185
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 186
    new-instance v1, Landroid/support/v4/widget/ai$e;

    invoke-direct {v1}, Landroid/support/v4/widget/ai$e;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    goto :goto_0

    .line 188
    :cond_3
    new-instance v1, Landroid/support/v4/widget/ai$b;

    invoke-direct {v1}, Landroid/support/v4/widget/ai$b;-><init>()V

    sput-object v1, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 262
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ai$f;->a(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/aj;
        .end annotation
    .end param

    .prologue
    .line 283
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ai$f;->a(Landroid/widget/TextView;I)V

    .line 284
    return-void
.end method

.method public static a(Landroid/widget/TextView;IIII)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "start"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p2, "top"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p3, "end"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p4, "bottom"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 254
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/ai$f;->a(Landroid/widget/TextView;IIII)V

    .line 255
    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 210
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/ai$f;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    return-void
.end method

.method public static b(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 270
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ai$f;->b(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 230
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/ai$f;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-void
.end method

.method public static c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 290
    sget-object v0, Landroid/support/v4/widget/ai;->a:Landroid/support/v4/widget/ai$f;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ai$f;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

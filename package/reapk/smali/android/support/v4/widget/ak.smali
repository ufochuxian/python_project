.class Landroid/support/v4/widget/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x9
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TextViewCompatGingerbread"

.field private static final b:I = 0x1

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z

.field private static i:Ljava/lang/reflect/Field;

.field private static j:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 47
    sget-boolean v0, Landroid/support/v4/widget/ak;->f:Z

    if-nez v0, :cond_0

    .line 48
    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ak;->e:Ljava/lang/reflect/Field;

    .line 49
    sput-boolean v1, Landroid/support/v4/widget/ak;->f:Z

    .line 51
    :cond_0
    sget-object v0, Landroid/support/v4/widget/ak;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v4/widget/ak;->e:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 53
    sget-boolean v0, Landroid/support/v4/widget/ak;->d:Z

    if-nez v0, :cond_1

    .line 54
    const-string v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ak;->c:Ljava/lang/reflect/Field;

    .line 55
    sput-boolean v1, Landroid/support/v4/widget/ak;->d:Z

    .line 57
    :cond_1
    sget-object v0, Landroid/support/v4/widget/ak;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Landroid/support/v4/widget/ak;->c:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "TextViewCompatGingerbread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TextViewCompatGingerbread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " field."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 104
    return-void
.end method

.method static b(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 65
    sget-boolean v0, Landroid/support/v4/widget/ak;->j:Z

    if-nez v0, :cond_0

    .line 66
    const-string v0, "mMinMode"

    invoke-static {v0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ak;->i:Ljava/lang/reflect/Field;

    .line 67
    sput-boolean v1, Landroid/support/v4/widget/ak;->j:Z

    .line 69
    :cond_0
    sget-object v0, Landroid/support/v4/widget/ak;->i:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v4/widget/ak;->i:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 71
    sget-boolean v0, Landroid/support/v4/widget/ak;->h:Z

    if-nez v0, :cond_1

    .line 72
    const-string v0, "mMinimum"

    invoke-static {v0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ak;->g:Ljava/lang/reflect/Field;

    .line 73
    sput-boolean v1, Landroid/support/v4/widget/ak;->h:Z

    .line 75
    :cond_1
    sget-object v0, Landroid/support/v4/widget/ak;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Landroid/support/v4/widget/ak;->g:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/ak;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

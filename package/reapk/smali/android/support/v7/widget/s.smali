.class public Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final a:Landroid/graphics/Rect;

.field private static final b:Ljava/lang/String; = "DrawableUtils"

.field private static c:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v7/widget/s;->a:Landroid/graphics/Rect;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 53
    :try_start_0
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/s;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 182
    packed-switch p0, :pswitch_data_0

    .line 191
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 183
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 184
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 185
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 186
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 187
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 188
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string v0, "ADD"

    .line 189
    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 67
    sget-object v5, Landroid/support/v7/widget/s;->c:Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 71
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/d/a/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getOpticalInsets"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 74
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    .local v2, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 77
    .local v3, "insets":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 79
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v4, "result":Landroid/graphics/Rect;
    sget-object v5, Landroid/support/v7/widget/s;->c:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v8, v7

    .line 82
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v5, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 81
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    .line 84
    :pswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 99
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "insets":Ljava/lang/Object;
    .end local v4    # "result":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DrawableUtils"

    const-string v6, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Landroid/support/v7/widget/s;->a:Landroid/graphics/Rect;

    :cond_2
    return-object v4

    .line 87
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "insets":Ljava/lang/Object;
    .restart local v4    # "result":Landroid/graphics/Rect;
    :pswitch_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 90
    :pswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 93
    :pswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 82
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static b(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Landroid/support/v7/widget/s;->d(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xf

    const/4 v3, 0x0

    .line 127
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_1

    instance-of v4, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v4, :cond_1

    .line 161
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v3

    .line 129
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_2

    instance-of v4, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    .line 133
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_3

    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v4, :cond_0

    .line 137
    :cond_3
    instance-of v4, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v4, :cond_4

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 140
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v4, v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v4, :cond_7

    move-object v1, v2

    .line 141
    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 143
    .local v1, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_7

    aget-object v0, v5, v4

    .line 144
    .local v0, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    instance-of v3, p0, Landroid/support/v4/d/a/h;

    if-eqz v3, :cond_5

    .line 150
    check-cast p0, Landroid/support/v4/d/a/h;

    .line 152
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Landroid/support/v4/d/a/h;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 150
    invoke-static {v3}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_0

    .line 153
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v3, p0, Landroid/support/v7/c/a/a;

    if-eqz v3, :cond_6

    .line 154
    check-cast p0, Landroid/support/v7/c/a/a;

    .line 156
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/support/v7/c/a/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 154
    invoke-static {v3}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_0

    .line 157
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v3, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_7

    .line 158
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_0

    .line 161
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static d(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 170
    .local v0, "originalState":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 172
    :cond_0
    sget-object v1, Landroid/support/v7/widget/ao;->e:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 178
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 179
    return-void

    .line 175
    :cond_1
    sget-object v1, Landroid/support/v7/widget/ao;->h:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

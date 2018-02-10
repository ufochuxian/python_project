.class Landroid/support/v7/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x9
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/ar;

.field private c:Landroid/support/v7/widget/ar;

.field private d:Landroid/support/v7/widget/ar;

.field private e:Landroid/support/v7/widget/ar;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/ar;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroid/support/v7/widget/g;
    .param p2, "drawableId"    # I

    .prologue
    .line 190
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 191
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Landroid/support/v7/widget/ar;

    invoke-direct {v0}, Landroid/support/v7/widget/ar;-><init>()V

    .line 193
    .local v0, "tintInfo":Landroid/support/v7/widget/ar;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/ar;->d:Z

    .line 194
    iput-object v1, v0, Landroid/support/v7/widget/ar;->a:Landroid/content/res/ColorStateList;

    .line 197
    .end local v0    # "tintInfo":Landroid/support/v7/widget/ar;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/l;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Landroid/support/v7/widget/m;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/m;-><init>(Landroid/widget/TextView;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/l;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/l;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/ar;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/ar;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/ar;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/l;->e:Landroid/support/v7/widget/ar;

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/ar;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;)V

    .line 176
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/ar;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;)V

    .line 177
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;)V

    .line 178
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->e:Landroid/support/v7/widget/ar;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;)V

    .line 180
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 143
    sget-object v2, Landroid/support/v7/a/b$l;->TextAppearance:[I

    invoke-static {p1, p2, v2}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/support/v7/widget/at;
    sget v2, Landroid/support/v7/a/b$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget v2, Landroid/support/v7/a/b$l;->TextAppearance_textAllCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/at;->a(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/l;->a(Z)V

    .line 152
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    sget v2, Landroid/support/v7/a/b$l;->TextAppearance_android_textColor:I

    .line 153
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    sget v2, Landroid/support/v7/a/b$l;->TextAppearance_android_textColor:I

    .line 157
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 158
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 159
    iget-object v2, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 163
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroid/support/v7/widget/ar;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;[I)V

    .line 186
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/16 v12, 0x17

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 54
    iget-object v9, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 55
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/support/v7/widget/g;->a()Landroid/support/v7/widget/g;

    move-result-object v5

    .line 58
    .local v5, "drawableManager":Landroid/support/v7/widget/g;
    sget-object v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper:[I

    invoke-static {v4, p1, v9, p2, v10}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/support/v7/widget/at;
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v0, v9, v11}, Landroid/support/v7/widget/at;->g(II)I

    move-result v3

    .line 62
    .local v3, "ap":I
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableLeft:I

    .line 64
    invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/at;->g(II)I

    move-result v9

    .line 63
    invoke-static {v4, v5, v9}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/ar;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/ar;

    .line 66
    :cond_0
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableTop:I

    .line 68
    invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/at;->g(II)I

    move-result v9

    .line 67
    invoke-static {v4, v5, v9}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/ar;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/ar;

    .line 70
    :cond_1
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 71
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableRight:I

    .line 72
    invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/at;->g(II)I

    move-result v9

    .line 71
    invoke-static {v4, v5, v9}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/ar;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/ar;

    .line 74
    :cond_2
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 75
    sget v9, Landroid/support/v7/a/b$l;->AppCompatTextHelper_android_drawableBottom:I

    .line 76
    invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/at;->g(II)I

    move-result v9

    .line 75
    invoke-static {v4, v5, v9}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/ar;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/widget/l;->e:Landroid/support/v7/widget/ar;

    .line 78
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 83
    iget-object v9, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    instance-of v6, v9, Landroid/text/method/PasswordTransformationMethod;

    .line 85
    .local v6, "hasPwdTm":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "allCaps":Z
    const/4 v2, 0x0

    .line 87
    .local v2, "allCapsSet":Z
    const/4 v7, 0x0

    .line 88
    .local v7, "textColor":Landroid/content/res/ColorStateList;
    const/4 v8, 0x0

    .line 91
    .local v8, "textColorHint":Landroid/content/res/ColorStateList;
    if-eq v3, v11, :cond_7

    .line 92
    sget-object v9, Landroid/support/v7/a/b$l;->TextAppearance:[I

    invoke-static {v4, v3, v9}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 93
    if-nez v6, :cond_4

    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 94
    const/4 v2, 0x1

    .line 95
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/at;->a(IZ)Z

    move-result v1

    .line 97
    :cond_4
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v12, :cond_6

    .line 100
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 101
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 103
    :cond_5
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 104
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 108
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 112
    :cond_7
    sget-object v9, Landroid/support/v7/a/b$l;->TextAppearance:[I

    invoke-static {v4, p1, v9, p2, v10}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 114
    if-nez v6, :cond_8

    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 115
    const/4 v2, 0x1

    .line 116
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/at;->a(IZ)Z

    move-result v1

    .line 118
    :cond_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v12, :cond_a

    .line 121
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 122
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 124
    :cond_9
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->j(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 125
    sget v9, Landroid/support/v7/a/b$l;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 129
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 131
    if-eqz v7, :cond_b

    .line 132
    iget-object v9, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    :cond_b
    if-eqz v8, :cond_c

    .line 135
    iget-object v9, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    :cond_c
    if-nez v6, :cond_d

    if-eqz v2, :cond_d

    .line 138
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/l;->a(Z)V

    .line 140
    :cond_d
    return-void
.end method

.method a(Z)V
    .locals 3
    .param p1, "allCaps"    # Z

    .prologue
    .line 166
    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/f/a;

    iget-object v2, p0, Landroid/support/v7/widget/l;->a:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/f/a;-><init>(Landroid/content/Context;)V

    .line 166
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

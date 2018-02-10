.class public Landroid/support/v7/widget/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/p;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "ToolbarWidgetWrapper"

.field private static final f:I = 0x3

.field private static final g:J = 0xc8L


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private h:I

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Spinner;

.field private k:Landroid/view/View;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroid/support/v7/widget/ActionMenuPresenter;

.field private s:I

.field private t:I

.field private u:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z

    .prologue
    .line 95
    sget v0, Landroid/support/v7/a/b$j;->abc_action_bar_up_description:I

    sget v1, Landroid/support/v7/a/b$f;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/au;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 20
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/au;->s:I

    .line 91
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/au;->t:I

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/widget/au;->b:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/widget/au;->p:Ljava/lang/CharSequence;

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->b:Ljava/lang/CharSequence;

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/v7/widget/au;->o:Z

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/widget/au;->n:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Landroid/support/v7/a/b$l;->ActionBar:[I

    sget v18, Landroid/support/v7/a/b$b;->actionBarStyle:I

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/at;

    move-result-object v2

    .line 108
    .local v2, "a":Landroid/support/v7/widget/at;
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    .line 109
    if-eqz p2, :cond_d

    .line 110
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_title:I

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/at;->d(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 111
    .local v13, "title":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/au;->b(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_subtitle:I

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/at;->d(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 116
    .local v11, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/au;->c(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_logo:I

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 121
    .local v8, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/au;->b(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_2
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_icon:I

    invoke-virtual {v2, v15}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 126
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/au;->a(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->n:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/au;->c(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_4
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_displayOptions:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->a(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/au;->c(I)V

    .line 134
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_customNavigationLayout:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->g(II)I

    move-result v5

    .line 136
    .local v5, "customNavId":I
    if-eqz v5, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)V

    .line 139
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/au;->h:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/au;->c(I)V

    .line 142
    :cond_5
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_height:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->f(II)I

    move-result v6

    .line 143
    .local v6, "height":I
    if-lez v6, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 145
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15, v9}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_contentInsetStart:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->d(II)I

    move-result v4

    .line 151
    .local v4, "contentInsetStart":I
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_contentInsetEnd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->d(II)I

    move-result v3

    .line 153
    .local v3, "contentInsetEnd":I
    if-gez v4, :cond_7

    if-ltz v3, :cond_8

    .line 154
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    .line 155
    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 154
    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 158
    :cond_8
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_titleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->g(II)I

    move-result v14

    .line 159
    .local v14, "titleTextStyle":I
    if-eqz v14, :cond_9

    .line 160
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 163
    :cond_9
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_subtitleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->g(II)I

    move-result v12

    .line 165
    .local v12, "subtitleTextStyle":I
    if-eqz v12, :cond_a

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 169
    :cond_a
    sget v15, Landroid/support/v7/a/b$l;->ActionBar_popupTheme:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/support/v7/widget/at;->g(II)I

    move-result v10

    .line 170
    .local v10, "popupTheme":I
    if-eqz v10, :cond_b

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15, v10}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 176
    .end local v3    # "contentInsetEnd":I
    .end local v4    # "contentInsetStart":I
    .end local v5    # "customNavId":I
    .end local v6    # "height":I
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v10    # "popupTheme":I
    .end local v11    # "subtitle":Ljava/lang/CharSequence;
    .end local v12    # "subtitleTextStyle":I
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v14    # "titleTextStyle":I
    :cond_b
    :goto_1
    invoke-virtual {v2}, Landroid/support/v7/widget/at;->e()V

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/au;->i(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/widget/au;->q:Ljava/lang/CharSequence;

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v16, Landroid/support/v7/widget/au$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/au$1;-><init>(Landroid/support/v7/widget/au;)V

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void

    .line 104
    .end local v2    # "a":Landroid/support/v7/widget/at;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 174
    .restart local v2    # "a":Landroid/support/v7/widget/at;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/au;->B()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/au;->h:I

    goto :goto_1
.end method

.method private B()I
    .locals 2

    .prologue
    .line 205
    const/16 v0, 0xb

    .line 207
    .local v0, "opts":I
    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    or-int/lit8 v0, v0, 0x4

    .line 209
    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_0
    return v0
.end method

.method private C()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 323
    iget v1, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Landroid/support/v7/widget/au;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/au;->m:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/au;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private D()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 502
    iget-object v1, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 503
    new-instance v1, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Landroid/support/v7/a/b$b;->actionDropDownStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    .line 504
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Landroid/support/v7/widget/Toolbar$b;-><init>(III)V

    .line 506
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$b;
    iget-object v1, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$b;
    :cond_0
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 611
    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/au;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->n:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_1
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private F()V
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/au;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/au;->t:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/au;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/v7/widget/au;->b:Ljava/lang/CharSequence;

    .line 260
    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public a(IJ)Landroid/support/v4/view/bm;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ap;->A(Landroid/view/View;)Landroid/support/v4/view/bm;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 566
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/bm;->a(F)Landroid/support/v4/view/bm;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/bm;->a(J)Landroid/support/v4/view/bm;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/au$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/au$2;-><init>(Landroid/support/v7/widget/au;I)V

    .line 568
    invoke-virtual {v0, v1}, Landroid/support/v4/view/bm;->a(Landroid/support/v4/view/bs;)Landroid/support/v4/view/bm;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/au;->a(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 305
    iput-object p1, p0, Landroid/support/v7/widget/au;->l:Landroid/graphics/drawable/Drawable;

    .line 306
    invoke-direct {p0}, Landroid/support/v7/widget/au;->C()V

    .line 307
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V
    .locals 1
    .param p1, "actionMenuPresenterCallback"    # Landroid/support/v7/view/menu/o$a;
    .param p2, "menuBuilderCallback"    # Landroid/support/v7/view/menu/h$a;

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    .line 672
    return-void
.end method

.method public a(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Landroid/support/v7/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, -0x2

    .line 421
    iget-object v1, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 422
    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 424
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    .line 425
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/au;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 426
    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 427
    iget-object v1, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 428
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$b;
    iput v4, v0, Landroid/support/v7/widget/Toolbar$b;->width:I

    .line 429
    iput v4, v0, Landroid/support/v7/widget/Toolbar$b;->height:I

    .line 430
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 431
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 433
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$b;
    :cond_1
    return-void
.end method

.method public a(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 641
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroid/support/v7/view/menu/o$a;

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/au;->r:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->r:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/au;->r:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Landroid/support/v7/a/b$g;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->r:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/h;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Landroid/support/v7/widget/au;->r:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/view/menu/h;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 370
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 542
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    .line 543
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 546
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/support/v7/widget/au;->c:Landroid/view/Window$Callback;

    .line 237
    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 513
    invoke-direct {p0}, Landroid/support/v7/widget/au;->D()V

    .line 514
    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 516
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iget-boolean v0, p0, Landroid/support/v7/widget/au;->o:Z

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Landroid/support/v7/widget/au;->e(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 448
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 311
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/au;->b(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 316
    iput-object p1, p0, Landroid/support/v7/widget/au;->m:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-direct {p0}, Landroid/support/v7/widget/au;->C()V

    .line 318
    return-void
.end method

.method public b(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 646
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/au;->o:Z

    .line 255
    invoke-direct {p0, p1}, Landroid/support/v7/widget/au;->e(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 453
    return-void
.end method

.method public c(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 384
    iget v1, p0, Landroid/support/v7/widget/au;->h:I

    .line 385
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 386
    .local v0, "changed":I
    iput p1, p0, Landroid/support/v7/widget/au;->h:I

    .line 387
    if-eqz v0, :cond_4

    .line 388
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 389
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0}, Landroid/support/v7/widget/au;->F()V

    .line 392
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/au;->E()V

    .line 395
    :cond_1
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_2

    .line 396
    invoke-direct {p0}, Landroid/support/v7/widget/au;->C()V

    .line 399
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 400
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 401
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 409
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 410
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 411
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 417
    :cond_4
    :goto_1
    return-void

    .line 404
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v7/widget/au;->n:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-direct {p0}, Landroid/support/v7/widget/au;->E()V

    .line 594
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    iput-object p1, p0, Landroid/support/v7/widget/au;->p:Ljava/lang/CharSequence;

    .line 273
    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->i()V

    .line 232
    return-void
.end method

.method public d(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 462
    iget v1, p0, Landroid/support/v7/widget/au;->s:I

    .line 463
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 464
    packed-switch v1, :pswitch_data_0

    .line 477
    :cond_0
    :goto_0
    iput p1, p0, Landroid/support/v7/widget/au;->s:I

    .line 479
    packed-switch p1, :pswitch_data_1

    .line 496
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :pswitch_0
    iget-object v2, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 467
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 471
    :pswitch_1
    iget-object v2, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 472
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/au;->D()V

    .line 484
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 499
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 487
    :pswitch_4
    iget-object v2, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 489
    iget-object v2, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 490
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$b;
    iput v4, v0, Landroid/support/v7/widget/Toolbar$b;->width:I

    .line 491
    iput v4, v0, Landroid/support/v7/widget/Toolbar$b;->height:I

    .line 492
    const v2, 0x800053

    iput v2, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    goto :goto_1

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 604
    iput-object p1, p0, Landroid/support/v7/widget/au;->u:Landroid/graphics/drawable/Drawable;

    .line 605
    invoke-direct {p0}, Landroid/support/v7/widget/au;->E()V

    .line 607
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 619
    iput-object p1, p0, Landroid/support/v7/widget/au;->q:Ljava/lang/CharSequence;

    .line 620
    invoke-direct {p0}, Landroid/support/v7/widget/au;->F()V

    .line 621
    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 525
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p1}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 651
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 555
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v7/widget/au;->a(IJ)Landroid/support/v4/view/bm;

    move-result-object v0

    .line 557
    .local v0, "anim":Landroid/support/v4/view/bm;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/support/v4/view/bm;->e()V

    .line 560
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public g(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/au;->c(Landroid/graphics/drawable/Drawable;)V

    .line 599
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 285
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public h(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 625
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/au;->d(Ljava/lang/CharSequence;)V

    .line 626
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 195
    iget v0, p0, Landroid/support/v7/widget/au;->t:I

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/au;->t:I

    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Landroid/support/v7/widget/au;->t:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/au;->h(I)V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 661
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/au;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/au;->d:Z

    .line 360
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 375
    return-void
.end method

.method public r()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/support/v7/widget/au;->h:I

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/au;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Landroid/support/v7/widget/au;->s:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->j:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Landroid/view/View;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/au;->k:Landroid/view/View;

    return-object v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

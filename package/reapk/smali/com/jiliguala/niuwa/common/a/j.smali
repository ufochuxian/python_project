.class public Lcom/jiliguala/niuwa/common/a/j;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SHARE_RESOURCE"

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

.field private f:I

.field private g:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/jiliguala/niuwa/common/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/j;->b:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/jiliguala/niuwa/common/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/j;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 45
    sget-object v1, Lcom/jiliguala/niuwa/common/a/j;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/j;

    .line 46
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/a/j;
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/common/a/j;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/j;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/j;-><init>()V

    .line 49
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/j;
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/a/j;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/j;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, p0, Lcom/jiliguala/niuwa/common/a/j;->f:I

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->dismissAllowingStateLoss()V

    .line 244
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/j;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/j;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/a/j;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/a/i;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/common/a/i;->a(Ljava/lang/Object;)V

    .line 247
    :cond_0
    return-void

    .line 217
    :pswitch_0
    const-string v1, "Source"

    const-string v2, "Lock Listen DL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "Type"

    const-string v2, "Circle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 222
    :pswitch_1
    const-string v1, "Source"

    const-string v2, "Post Fav Listen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "Type"

    const-string v2, "Circle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v1, "Source"

    const-string v2, "Post Fav Watch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "Type"

    const-string v2, "Circle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 232
    :pswitch_3
    const-string v1, "Source"

    const-string v2, "Post Fav Post"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "Type"

    const-string v2, "Circle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 237
    :pswitch_4
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "Source URL"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->target:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Announcement Dialog Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f08030f

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 133
    const v6, 0x7f090160

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "content":Landroid/widget/TextView;
    const v6, 0x7f0904d7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/RatioImageView;

    .line 136
    .local v3, "shareIv":Lcom/jiliguala/niuwa/common/widget/RatioImageView;
    const v6, 0x7f09047c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 137
    .local v2, "roundedIv":Lcom/makeramen/roundedimageview/RoundedImageView;
    const v6, 0x7f0904e4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 138
    .local v5, "shareTv":Landroid/widget/TextView;
    const v6, 0x7f0904e0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 139
    .local v4, "shareToSignlePengYouQuan":Landroid/view/View;
    iget v6, p0, Lcom/jiliguala/niuwa/common/a/j;->f:I

    packed-switch v6, :pswitch_data_0

    .line 167
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v6, p0, Lcom/jiliguala/niuwa/common/a/j;->f:I

    packed-switch v6, :pswitch_data_1

    .line 192
    :goto_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->text:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->button:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v6, Lcom/jiliguala/niuwa/common/a/j$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/common/a/j$2;-><init>(Lcom/jiliguala/niuwa/common/a/j;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v6, Lcom/jiliguala/niuwa/common/a/j$3;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/common/a/j$3;-><init>(Lcom/jiliguala/niuwa/common/a/j;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void

    .line 141
    .end local v1    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_0
    invoke-virtual {v3, v9}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {v2, v10}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 143
    const v6, 0x3f23d70a    # 0.64f

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setRatio(F)V

    .line 144
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/a/j;->g:Landroid/view/View;

    const v7, 0x7f0900b6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080366

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    const v6, 0x7f0801e2

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    .line 146
    const v6, 0x7f09057a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {v3, v7}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {v3, v7}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :pswitch_3
    const v6, 0x7f080310

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :pswitch_4
    invoke-virtual {v3, v10}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setVisibility(I)V

    .line 161
    invoke-virtual {v2, v9}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/a/j;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080372

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->img:Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    goto/16 :goto_0

    .line 170
    .restart local v1    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_5
    const-string v6, "Type"

    const-string v7, "Listen DL"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Lock Share Dialog"

    invoke-virtual {v6, v7, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 174
    :pswitch_6
    const-string v6, "Type"

    const-string v7, "Listen"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Post Fav Share Dialog"

    invoke-virtual {v6, v7, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 178
    :pswitch_7
    const-string v6, "Type"

    const-string v7, "Watch"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Post Fav Share Dialog"

    invoke-virtual {v6, v7, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 182
    :pswitch_8
    const-string v6, "Type"

    const-string v7, "Post"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Post Fav Share Dialog"

    invoke-virtual {v6, v7, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 186
    :pswitch_9
    const-string v6, "ID"

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v6, "Source URL"

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->target:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Announcement Dialog"

    invoke-virtual {v6, v7, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/a/j;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/a/j;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/a/j;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/a/i;)V
    .locals 1
    .param p1, "callback"    # Lcom/jiliguala/niuwa/common/a/i;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->d:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;I)V
    .locals 0
    .param p1, "shareInfo"    # Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    .param p2, "type"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    .line 116
    iput p2, p0, Lcom/jiliguala/niuwa/common/a/j;->f:I

    .line 120
    return-void
.end method

.method public b(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 62
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lcom/jiliguala/niuwa/common/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v1, 0x0

    const v2, 0x7f1000b4

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/common/a/j;->setStyle(II)V

    .line 75
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "SHARE_RESOURCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 101
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    new-instance v1, Lcom/jiliguala/niuwa/common/a/j$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/a/j$1;-><init>(Lcom/jiliguala/niuwa/common/a/j;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 124
    const v0, 0x7f0b00cd

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->g:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->e:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/a/j;->a(Landroid/view/View;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/j;->g:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 252
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 254
    .local v0, "fm":Landroid/support/v4/app/ag;
    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    sget-object v3, Lcom/jiliguala/niuwa/common/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 256
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 258
    .local v2, "ft":Landroid/support/v4/app/an;
    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v2, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/jiliguala/niuwa/common/a/j;->f:I

    if-nez v3, :cond_1

    .line 268
    :cond_1
    return-void

    .line 263
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 83
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 84
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 86
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/j;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 88
    .local v2, "width":I
    const/4 v1, -0x2

    .line 89
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 91
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    .end local v0    # "dlg":Landroid/app/Dialog;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

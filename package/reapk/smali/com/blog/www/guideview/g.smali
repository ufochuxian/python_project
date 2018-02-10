.class public Lcom/blog/www/guideview/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blog/www/guideview/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/blog/www/guideview/e;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blog/www/guideview/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/blog/www/guideview/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blog/www/guideview/g;->c:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/blog/www/guideview/e;

    invoke-direct {v0}, Lcom/blog/www/guideview/e;-><init>()V

    iput-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lcom/blog/www/guideview/f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 380
    new-instance v1, Lcom/blog/www/guideview/f;

    invoke-direct {v1}, Lcom/blog/www/guideview/f;-><init>()V

    .line 381
    .local v1, "guide":Lcom/blog/www/guideview/f;
    iget-object v2, p0, Lcom/blog/www/guideview/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/blog/www/guideview/d;

    .line 382
    .local v0, "components":[Lcom/blog/www/guideview/d;
    iget-object v2, p0, Lcom/blog/www/guideview/g;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/blog/www/guideview/d;

    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/f;->a([Lcom/blog/www/guideview/d;)V

    .line 383
    iget-object v2, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/e;)V

    .line 384
    iget-object v2, p0, Lcom/blog/www/guideview/g;->d:Lcom/blog/www/guideview/g$a;

    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/g$a;)V

    .line 385
    iput-object v3, p0, Lcom/blog/www/guideview/g;->c:Ljava/util/List;

    .line 386
    iput-object v3, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    .line 387
    iput-object v3, p0, Lcom/blog/www/guideview/g;->d:Lcom/blog/www/guideview/g$a;

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/blog/www/guideview/g;->b:Z

    .line 389
    return-object v1
.end method

.method public a(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 70
    :cond_1
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal alpha value, should between [0-255]"

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->h:I

    .line 73
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal view."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput-object p1, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    .line 86
    return-object p0
.end method

.method public a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "component"    # Lcom/blog/www/guideview/d;

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-object p0
.end method

.method public a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "onVisibilityChangedListener"    # Lcom/blog/www/guideview/g$a;

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/blog/www/guideview/g;->d:Lcom/blog/www/guideview/g$a;

    .line 286
    return-object p0
.end method

.method public a(Z)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput-boolean p1, v0, Lcom/blog/www/guideview/e;->n:Z

    .line 176
    return-object p0
.end method

.method public b(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    if-gtz p1, :cond_1

    .line 99
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal view id."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->j:I

    .line 102
    return-object p0
.end method

.method public b(Z)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput-boolean p1, v0, Lcom/blog/www/guideview/e;->z:Z

    .line 190
    return-object p0
.end method

.method public c(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-gtz p1, :cond_1

    .line 115
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal view id."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->i:I

    .line 118
    return-object p0
.end method

.method public c(Z)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput-boolean p1, v0, Lcom/blog/www/guideview/e;->o:Z

    .line 204
    return-object p0
.end method

.method public d(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "corner"    # I

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-gez p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/blog/www/guideview/e;->k:I

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->k:I

    .line 133
    return-object p0
.end method

.method public d(Z)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput-boolean p1, v0, Lcom/blog/www/guideview/e;->q:Z

    .line 212
    return-object p0
.end method

.method public e(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->l:I

    .line 146
    return-object p0
.end method

.method public e(Z)Lcom/blog/www/guideview/g;
    .locals 1
    .param p1, "touchable"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput-boolean p1, v0, Lcom/blog/www/guideview/e;->g:Z

    .line 296
    return-object p0
.end method

.method public f(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-gtz p1, :cond_1

    .line 159
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal color resource id."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->m:I

    .line 162
    return-object p0
.end method

.method public g(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "screenWidth"    # I

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->r:I

    .line 220
    return-object p0
.end method

.method public h(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "screenHeight"    # I

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created, rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->s:I

    .line 228
    return-object p0
.end method

.method public i(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    if-gtz p1, :cond_1

    .line 241
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal animation resource id."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->t:I

    .line 244
    return-object p0
.end method

.method public j(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    if-gtz p1, :cond_1

    .line 257
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Illegal animation resource id."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->u:I

    .line 260
    return-object p0
.end method

.method public k(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "padding"    # I

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    if-gez p1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/blog/www/guideview/e;->b:I

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->b:I

    .line 311
    return-object p0
.end method

.method public l(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "padding"    # I

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    if-gez p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/blog/www/guideview/e;->c:I

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->c:I

    .line 326
    return-object p0
.end method

.method public m(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "padding"    # I

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    if-gez p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/blog/www/guideview/e;->d:I

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->d:I

    .line 341
    return-object p0
.end method

.method public n(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "padding"    # I

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    if-gez p1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/blog/www/guideview/e;->e:I

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->e:I

    .line 356
    return-object p0
.end method

.method public o(I)Lcom/blog/www/guideview/g;
    .locals 2
    .param p1, "padding"    # I

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/blog/www/guideview/g;->b:Z

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lcom/blog/www/guideview/b;

    const-string v1, "Already created. rebuild a new one."

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    if-gez p1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/blog/www/guideview/e;->f:I

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/blog/www/guideview/g;->a:Lcom/blog/www/guideview/e;

    iput p1, v0, Lcom/blog/www/guideview/e;->f:I

    .line 371
    return-object p0
.end method

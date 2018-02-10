.class Landroid/support/constraint/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final e:I = -0x1


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:F

.field public P:F

.field public Q:I

.field public R:I

.field a:Z

.field public b:I

.field public c:I

.field d:I

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:F

.field public w:F

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, -0x1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/b$a;->a:Z

    .line 269
    iput v1, p0, Landroid/support/constraint/b$a;->f:I

    .line 270
    iput v1, p0, Landroid/support/constraint/b$a;->g:I

    .line 271
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/b$a;->h:F

    .line 273
    iput v1, p0, Landroid/support/constraint/b$a;->i:I

    .line 274
    iput v1, p0, Landroid/support/constraint/b$a;->j:I

    .line 275
    iput v1, p0, Landroid/support/constraint/b$a;->k:I

    .line 276
    iput v1, p0, Landroid/support/constraint/b$a;->l:I

    .line 277
    iput v1, p0, Landroid/support/constraint/b$a;->m:I

    .line 278
    iput v1, p0, Landroid/support/constraint/b$a;->n:I

    .line 279
    iput v1, p0, Landroid/support/constraint/b$a;->o:I

    .line 280
    iput v1, p0, Landroid/support/constraint/b$a;->p:I

    .line 281
    iput v1, p0, Landroid/support/constraint/b$a;->q:I

    .line 283
    iput v1, p0, Landroid/support/constraint/b$a;->r:I

    .line 284
    iput v1, p0, Landroid/support/constraint/b$a;->s:I

    .line 285
    iput v1, p0, Landroid/support/constraint/b$a;->t:I

    .line 286
    iput v1, p0, Landroid/support/constraint/b$a;->u:I

    .line 288
    iput v2, p0, Landroid/support/constraint/b$a;->v:F

    .line 289
    iput v2, p0, Landroid/support/constraint/b$a;->w:F

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/b$a;->x:Ljava/lang/String;

    .line 292
    iput v1, p0, Landroid/support/constraint/b$a;->y:I

    .line 293
    iput v1, p0, Landroid/support/constraint/b$a;->z:I

    .line 295
    iput v1, p0, Landroid/support/constraint/b$a;->A:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/constraint/b$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/constraint/b$1;

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/support/constraint/b$a;-><init>()V

    return-void
.end method

.method private a(ILandroid/support/constraint/ConstraintLayout$a;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "param"    # Landroid/support/constraint/ConstraintLayout$a;

    .prologue
    .line 315
    iput p1, p0, Landroid/support/constraint/b$a;->d:I

    .line 316
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->p:I

    iput v1, p0, Landroid/support/constraint/b$a;->i:I

    .line 317
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->q:I

    iput v1, p0, Landroid/support/constraint/b$a;->j:I

    .line 318
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->r:I

    iput v1, p0, Landroid/support/constraint/b$a;->k:I

    .line 319
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->s:I

    iput v1, p0, Landroid/support/constraint/b$a;->l:I

    .line 320
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->t:I

    iput v1, p0, Landroid/support/constraint/b$a;->m:I

    .line 321
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->u:I

    iput v1, p0, Landroid/support/constraint/b$a;->n:I

    .line 322
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->v:I

    iput v1, p0, Landroid/support/constraint/b$a;->o:I

    .line 323
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->w:I

    iput v1, p0, Landroid/support/constraint/b$a;->p:I

    .line 324
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->x:I

    iput v1, p0, Landroid/support/constraint/b$a;->q:I

    .line 325
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->y:I

    iput v1, p0, Landroid/support/constraint/b$a;->r:I

    .line 326
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->z:I

    iput v1, p0, Landroid/support/constraint/b$a;->s:I

    .line 327
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->A:I

    iput v1, p0, Landroid/support/constraint/b$a;->t:I

    .line 328
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->B:I

    iput v1, p0, Landroid/support/constraint/b$a;->u:I

    .line 330
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->I:F

    iput v1, p0, Landroid/support/constraint/b$a;->v:F

    .line 331
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->J:F

    iput v1, p0, Landroid/support/constraint/b$a;->w:F

    .line 332
    iget-object v1, p2, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    iput-object v1, p0, Landroid/support/constraint/b$a;->x:Ljava/lang/String;

    .line 333
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->R:I

    iput v1, p0, Landroid/support/constraint/b$a;->y:I

    .line 334
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->S:I

    iput v1, p0, Landroid/support/constraint/b$a;->z:I

    .line 335
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->T:I

    iput v1, p0, Landroid/support/constraint/b$a;->A:I

    .line 336
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iput v1, p0, Landroid/support/constraint/b$a;->h:F

    .line 337
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->m:I

    iput v1, p0, Landroid/support/constraint/b$a;->f:I

    .line 338
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->n:I

    iput v1, p0, Landroid/support/constraint/b$a;->g:I

    .line 339
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iput v1, p0, Landroid/support/constraint/b$a;->b:I

    .line 340
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iput v1, p0, Landroid/support/constraint/b$a;->c:I

    .line 341
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iput v1, p0, Landroid/support/constraint/b$a;->B:I

    .line 342
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iput v1, p0, Landroid/support/constraint/b$a;->C:I

    .line 343
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iput v1, p0, Landroid/support/constraint/b$a;->D:I

    .line 344
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iput v1, p0, Landroid/support/constraint/b$a;->E:I

    .line 345
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->O:F

    iput v1, p0, Landroid/support/constraint/b$a;->O:F

    .line 346
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->N:F

    iput v1, p0, Landroid/support/constraint/b$a;->P:F

    .line 347
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iput v1, p0, Landroid/support/constraint/b$a;->R:I

    .line 348
    iget v1, p2, Landroid/support/constraint/ConstraintLayout$a;->P:I

    iput v1, p0, Landroid/support/constraint/b$a;->Q:I

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 350
    .local v0, "currentapiVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 351
    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$a;->getMarginEnd()I

    move-result v1

    iput v1, p0, Landroid/support/constraint/b$a;->F:I

    .line 352
    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$a;->getMarginStart()I

    move-result v1

    iput v1, p0, Landroid/support/constraint/b$a;->G:I

    .line 354
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/constraint/b$a;ILandroid/support/constraint/ConstraintLayout$a;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/b$a;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/support/constraint/ConstraintLayout$a;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/b$a;->a(ILandroid/support/constraint/ConstraintLayout$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/ConstraintLayout$a;)V
    .locals 2
    .param p1, "param"    # Landroid/support/constraint/ConstraintLayout$a;

    .prologue
    .line 357
    iget v0, p0, Landroid/support/constraint/b$a;->i:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->p:I

    .line 358
    iget v0, p0, Landroid/support/constraint/b$a;->j:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->q:I

    .line 359
    iget v0, p0, Landroid/support/constraint/b$a;->k:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 360
    iget v0, p0, Landroid/support/constraint/b$a;->l:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->s:I

    .line 362
    iget v0, p0, Landroid/support/constraint/b$a;->m:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 363
    iget v0, p0, Landroid/support/constraint/b$a;->n:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->u:I

    .line 364
    iget v0, p0, Landroid/support/constraint/b$a;->o:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 365
    iget v0, p0, Landroid/support/constraint/b$a;->p:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->w:I

    .line 367
    iget v0, p0, Landroid/support/constraint/b$a;->q:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->x:I

    .line 369
    iget v0, p0, Landroid/support/constraint/b$a;->r:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->y:I

    .line 370
    iget v0, p0, Landroid/support/constraint/b$a;->s:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->z:I

    .line 371
    iget v0, p0, Landroid/support/constraint/b$a;->t:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->A:I

    .line 372
    iget v0, p0, Landroid/support/constraint/b$a;->u:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->B:I

    .line 374
    iget v0, p0, Landroid/support/constraint/b$a;->B:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    .line 375
    iget v0, p0, Landroid/support/constraint/b$a;->C:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    .line 376
    iget v0, p0, Landroid/support/constraint/b$a;->D:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    .line 377
    iget v0, p0, Landroid/support/constraint/b$a;->E:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    .line 379
    iget v0, p0, Landroid/support/constraint/b$a;->v:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->I:F

    .line 380
    iget v0, p0, Landroid/support/constraint/b$a;->w:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->J:F

    .line 382
    iget-object v0, p0, Landroid/support/constraint/b$a;->x:Ljava/lang/String;

    iput-object v0, p1, Landroid/support/constraint/ConstraintLayout$a;->K:Ljava/lang/String;

    .line 383
    iget v0, p0, Landroid/support/constraint/b$a;->y:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->R:I

    .line 384
    iget v0, p0, Landroid/support/constraint/b$a;->z:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->S:I

    .line 385
    iget v0, p0, Landroid/support/constraint/b$a;->O:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->O:F

    .line 386
    iget v0, p0, Landroid/support/constraint/b$a;->P:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->N:F

    .line 387
    iget v0, p0, Landroid/support/constraint/b$a;->R:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 388
    iget v0, p0, Landroid/support/constraint/b$a;->Q:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 390
    iget v0, p0, Landroid/support/constraint/b$a;->A:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->T:I

    .line 391
    iget v0, p0, Landroid/support/constraint/b$a;->h:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->o:F

    .line 392
    iget v0, p0, Landroid/support/constraint/b$a;->f:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->m:I

    .line 393
    iget v0, p0, Landroid/support/constraint/b$a;->g:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->n:I

    .line 394
    iget v0, p0, Landroid/support/constraint/b$a;->b:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->width:I

    .line 395
    iget v0, p0, Landroid/support/constraint/b$a;->c:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->height:I

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 397
    iget v0, p0, Landroid/support/constraint/b$a;->G:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$a;->setMarginStart(I)V

    .line 398
    iget v0, p0, Landroid/support/constraint/b$a;->F:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$a;->setMarginEnd(I)V

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout$a;->a()V

    .line 402
    return-void
.end method

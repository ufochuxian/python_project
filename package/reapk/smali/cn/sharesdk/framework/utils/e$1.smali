.class Lcn/sharesdk/framework/utils/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/utils/e;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:[C

.field final synthetic c:Ljava/lang/Appendable;

.field final synthetic d:Lcn/sharesdk/framework/utils/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/utils/e;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 288
    iput-object p1, p0, Lcn/sharesdk/framework/utils/e$1;->d:Lcn/sharesdk/framework/utils/e;

    iput-object p2, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->b:[C

    return-void
.end method

.method private a([CI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 407
    iget-object v1, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 372
    iget v0, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    if-eq v0, v2, :cond_2

    .line 376
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected low surrogate character but got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->d:Lcn/sharesdk/framework/utils/e;

    iget v1, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    int-to-char v1, v1

    invoke-static {v1, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/e;->a(I)[C

    move-result-object v0

    .line 380
    if-eqz v0, :cond_1

    .line 381
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/utils/e$1;->a([CI)V

    .line 386
    :goto_0
    iput v2, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    .line 402
    :goto_1
    return-object p0

    .line 383
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    iget v1, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 384
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 387
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iput p1, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    goto :goto_1

    .line 391
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected low surrogate character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->d:Lcn/sharesdk/framework/utils/e;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/e;->a(I)[C

    move-result-object v0

    .line 396
    if-eqz v0, :cond_5

    .line 397
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/utils/e$1;->a([CI)V

    goto :goto_1

    .line 399
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/sharesdk/framework/utils/e$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 297
    .line 298
    if-ge p2, p3, :cond_2

    .line 306
    iget v0, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    if-eq v0, v4, :cond_8

    .line 310
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 311
    add-int/lit8 v0, p2, 0x1

    .line 312
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected low surrogate character but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/framework/utils/e$1;->d:Lcn/sharesdk/framework/utils/e;

    iget v3, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/e;->a(I)[C

    move-result-object v1

    .line 316
    if-eqz v1, :cond_3

    .line 320
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/framework/utils/e$1;->a([CI)V

    .line 321
    add-int/lit8 p2, p2, 0x1

    .line 329
    .end local p2    # "start":I
    :goto_0
    iput v4, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    .line 334
    :goto_1
    iget-object v1, p0, Lcn/sharesdk/framework/utils/e$1;->d:Lcn/sharesdk/framework/utils/e;

    invoke-virtual {v1, p1, v0, p3}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 335
    if-le v1, p2, :cond_1

    .line 336
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 338
    :cond_1
    if-ne v1, p3, :cond_4

    .line 368
    :cond_2
    :goto_2
    return-object p0

    .line 327
    .restart local p2    # "start":I
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/framework/utils/e$1;->c:Ljava/lang/Appendable;

    iget v2, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    int-to-char v2, v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 343
    .end local p2    # "start":I
    :cond_4
    invoke-static {p1, v1, p3}, Lcn/sharesdk/framework/utils/e;->b(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 344
    if-gez v0, :cond_5

    .line 348
    neg-int v0, v0

    iput v0, p0, Lcn/sharesdk/framework/utils/e$1;->a:I

    goto :goto_2

    .line 352
    :cond_5
    iget-object v2, p0, Lcn/sharesdk/framework/utils/e$1;->d:Lcn/sharesdk/framework/utils/e;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/e;->a(I)[C

    move-result-object v2

    .line 353
    if-eqz v2, :cond_6

    .line 354
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcn/sharesdk/framework/utils/e$1;->a([CI)V

    .line 364
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    :goto_4
    add-int p2, v1, v0

    move v0, p2

    .line 366
    goto :goto_1

    .line 359
    :cond_6
    iget-object v2, p0, Lcn/sharesdk/framework/utils/e$1;->b:[C

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v2

    .line 360
    iget-object v3, p0, Lcn/sharesdk/framework/utils/e$1;->b:[C

    invoke-direct {p0, v3, v2}, Lcn/sharesdk/framework/utils/e$1;->a([CI)V

    goto :goto_3

    .line 364
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .restart local p2    # "start":I
    :cond_8
    move v0, p2

    goto :goto_1
.end method

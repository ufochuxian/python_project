.class Lorg/joda/time/b/c$n;
.super Lorg/joda/time/b/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/b/c$f;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    .line 1402
    return-void
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lorg/joda/time/b/c$n;->b:I

    return v0
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/a;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/b/c$n;->a:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    .line 1424
    invoke-virtual {v0, p2, p3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->a(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :goto_0
    return-void

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/n;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xfffd

    .line 1443
    iget-object v0, p0, Lorg/joda/time/b/c$n;->a:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/n;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/b/c$n;->a:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/n;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->a(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1450
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/a;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1412
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/b/c$n;->a:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, p2, p3}, Lorg/joda/time/c;->get(J)I

    move-result v0

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->a(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/n;Ljava/util/Locale;)V
    .locals 2

    .prologue
    const v1, 0xfffd

    .line 1431
    iget-object v0, p0, Lorg/joda/time/b/c$n;->a:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/n;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/b/c$n;->a:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/n;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/joda/time/b/g;->a(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :goto_0
    return-void

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1438
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.class Ljavax/jmdns/impl/f$d;
.super Ljavax/jmdns/impl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 81
    return-void
.end method

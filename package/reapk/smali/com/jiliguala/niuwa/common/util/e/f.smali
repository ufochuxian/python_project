.class public Lcom/jiliguala/niuwa/common/util/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/e/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/common/util/e/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/e/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/jiliguala/niuwa/common/util/e/f$a;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/jiliguala/niuwa/common/util/e/f$a;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/e/f$a;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Lcom/jiliguala/niuwa/services/f$a;)Z
    .locals 29
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "destinationFolder"    # Ljava/io/File;
    .param p2, "unZipObject"    # Lcom/jiliguala/niuwa/services/f$a;

    .prologue
    .line 24
    const/16 v19, 0x1

    .line 26
    .local v19, "result":Z
    const/4 v5, 0x0

    .line 27
    .local v5, "bis":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 28
    .local v14, "fis":Ljava/io/FileInputStream;
    const/16 v24, 0x0

    .line 30
    .local v24, "zis":Ljava/util/zip/ZipInputStream;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    .line 31
    .local v4, "arg":Lcom/jiliguala/niuwa/common/util/e/f$a;
    if-nez v4, :cond_0

    .line 32
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/e/f;->a()Lcom/jiliguala/niuwa/common/util/e/f$a;

    move-result-object v4

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 37
    .local v20, "totalFileSize":J
    const/16 v18, 0x1

    .line 40
    .local v18, "globalStatus":I
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v25, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .local v25, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "bis":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, "destinationFolderName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v23

    .local v23, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v23, :cond_8

    .line 46
    const/16 v22, 0x1

    .line 47
    .local v22, "unzipIndividualStatus":I
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v13

    .line 50
    .local v13, "fileName":Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 51
    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 75
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 83
    :goto_2
    if-eqz p2, :cond_1

    .line 84
    const/16 v26, 0x0

    :try_start_5
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->c(Lcom/jiliguala/niuwa/common/util/e/f$a;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/jiliguala/niuwa/services/f$a;->a(Lcom/jiliguala/niuwa/common/util/e/f$a;F)V

    .line 86
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lcom/jiliguala/niuwa/services/f$a;->a(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 90
    .end local v8    # "destinationFolderName":Ljava/lang/String;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v22    # "unzipIndividualStatus":I
    .end local v23    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v9

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 92
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_3
    const/16 v19, 0x0

    .line 93
    const/16 v18, 0x2

    .line 99
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 100
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 104
    .end local v9    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz p2, :cond_2

    .line 105
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/jiliguala/niuwa/services/f$a;->a(Lcom/jiliguala/niuwa/common/util/e/f$a;F)V

    .line 106
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/services/f$a;->a(I)V

    .line 109
    :cond_2
    return v19

    .line 53
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "destinationFolderName":Ljava/lang/String;
    .restart local v13    # "fileName":Ljava/lang/String;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v22    # "unzipIndividualStatus":I
    .restart local v23    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v25    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_6
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v16, "foler":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_4

    .line 55
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_4
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_5

    .line 60
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 62
    :cond_5
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v17, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    :cond_6
    :goto_5
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->a(Lcom/jiliguala/niuwa/common/util/e/f$a;)[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v26

    move/from16 v0, v26

    invoke-static {v4, v0}, Lcom/jiliguala/niuwa/common/util/e/f$a;->a(Lcom/jiliguala/niuwa/common/util/e/f$a;I)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 65
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->a(Lcom/jiliguala/niuwa/common/util/e/f$a;)[B

    move-result-object v26

    const/16 v27, 0x0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->b(Lcom/jiliguala/niuwa/common/util/e/f$a;)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v7, v0, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 66
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->c(Lcom/jiliguala/niuwa/common/util/e/f$a;)I

    move-result v26

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->b(Lcom/jiliguala/niuwa/common/util/e/f$a;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    invoke-static {v4, v0}, Lcom/jiliguala/niuwa/common/util/e/f$a;->b(Lcom/jiliguala/niuwa/common/util/e/f$a;I)I

    .line 67
    if-eqz p2, :cond_6

    .line 69
    const/16 v26, 0x0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/e/f$a;->c(Lcom/jiliguala/niuwa/common/util/e/f$a;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/jiliguala/niuwa/services/f$a;->a(Lcom/jiliguala/niuwa/common/util/e/f$a;F)V

    goto :goto_5

    .line 76
    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "foler":Ljava/io/File;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .line 78
    .local v11, "exIo":Ljava/io/IOException;
    const/16 v22, 0x2

    move/from16 v18, v22

    .line 82
    goto/16 :goto_2

    .line 72
    .end local v11    # "exIo":Ljava/io/IOException;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v16    # "foler":Ljava/io/File;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 73
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_1

    .line 79
    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "foler":Ljava/io/File;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    .line 81
    .local v10, "ex":Ljava/lang/Exception;
    const/16 v22, 0x3

    move/from16 v18, v22

    goto/16 :goto_2

    .line 99
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v22    # "unzipIndividualStatus":I
    :cond_8
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 100
    invoke-static/range {v25 .. v25}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v15}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 102
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 94
    .end local v8    # "destinationFolderName":Ljava/lang/String;
    .end local v23    # "ze":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v9

    .line 96
    .local v9, "e":Ljava/lang/Exception;
    :goto_6
    const/16 v19, 0x0

    .line 97
    const/16 v18, 0x3

    .line 99
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 100
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 99
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    :goto_7
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 100
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    throw v26

    .line 99
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v26

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v26

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v26

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 94
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v9

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_6
    move-exception v9

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 90
    :catch_7
    move-exception v9

    goto/16 :goto_3

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_9
    move-exception v9

    move-object/from16 v24, v25

    .end local v25    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v24    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

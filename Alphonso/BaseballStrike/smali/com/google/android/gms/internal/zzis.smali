.class public final Lcom/google/android/gms/internal/zzis;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzAf:J

.field private zzAg:I

.field private zzAh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzAi:Z

.field private zzAj:I

.field private zzAk:Ljava/lang/String;

.field private zzAl:Lcom/google/android/gms/internal/zzlt;

.field private zzAm:Ljava/lang/String;

.field private zzAn:Landroid/os/Bundle;

.field private zzAo:Landroid/os/Bundle;

.field private zzAp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzAq:Ljava/lang/String;

.field private zzAr:Ljava/lang/String;

.field private zzAs:Z

.field private zzdg:Landroid/location/Location;

.field private zzsw:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzis;->zzAf:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->mExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/internal/zzis;->zzAg:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAh:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzis;->zzAi:Z

    iput v4, p0, Lcom/google/android/gms/internal/zzis;->zzAj:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzis;->zzsw:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAk:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAl:Lcom/google/android/gms/internal/zzlt;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzdg:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAm:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAn:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAo:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAp:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAq:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAr:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzis;->zzAs:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzir;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzir;->zzzP:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzis;->zzAf:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/zzir;->zzzQ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzis;->zzAg:I

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzR:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAh:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzir;->zzzS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzAi:Z

    iget v0, p1, Lcom/google/android/gms/internal/zzir;->zzzT:I

    iput v0, p0, Lcom/google/android/gms/internal/zzis;->zzAj:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzir;->zzzU:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzsw:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzV:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAk:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzW:Lcom/google/android/gms/internal/zzlt;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAl:Lcom/google/android/gms/internal/zzlt;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzX:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzdg:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzY:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAm:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzZ:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAn:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzAa:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAo:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzAb:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAp:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzAc:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAq:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzAd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/location/Location;)Lcom/google/android/gms/internal/zzis;
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzdg:Landroid/location/Location;

    return-object p0
.end method

.method public final zzdj()Lcom/google/android/gms/internal/zzir;
    .locals 22

    new-instance v2, Lcom/google/android/gms/internal/zzir;

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzis;->zzAf:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzis;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/zzis;->zzAg:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzis;->zzAh:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzis;->zzAi:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/zzis;->zzAj:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzis;->zzsw:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzis;->zzAk:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzis;->zzAl:Lcom/google/android/gms/internal/zzlt;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzis;->zzdg:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzis;->zzAm:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzAn:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzAo:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzAp:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzAq:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzAr:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzir;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzlt;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.class public Lcom/google/android/gms/internal/zzaxv;
.super Ljava/lang/Object;


# instance fields
.field private final zzanR:Ljava/lang/String;

.field protected final zzarK:Lcom/google/android/gms/internal/zzayn;

.field private zzaxK:Lcom/google/android/gms/internal/zzayr;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayd;->zzci(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxv;->zzanR:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzayn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzayn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzarK:Lcom/google/android/gms/internal/zzayn;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzaxv;->setSessionLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzanR:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionLabel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzarK:Lcom/google/android/gms/internal/zzayn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzayn;->zzcn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzayr;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxK:Lcom/google/android/gms/internal/zzayr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxK:Lcom/google/android/gms/internal/zzayr;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxv;->zzoz()V

    :cond_0
    return-void
.end method

.method protected final zza(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object v6, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxK:Lcom/google/android/gms/internal/zzayr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxv;->zzanR:Ljava/lang/String;

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzayr;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public zzc(JI)V
    .locals 0

    return-void
.end method

.method public zzch(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected final zzoA()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxK:Lcom/google/android/gms/internal/zzayr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzayr;->zznl()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzoz()V
    .locals 0

    return-void
.end method

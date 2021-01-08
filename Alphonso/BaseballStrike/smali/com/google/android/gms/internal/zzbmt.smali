.class final Lcom/google/android/gms/internal/zzbmt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;


# instance fields
.field private final zzaOo:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmt;->zzaOo:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbmt;->zzaOo:Lcom/google/android/gms/internal/zzbdv;

    new-instance v0, Lcom/google/android/gms/internal/zzbmu;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbmu;-><init>(Lcom/google/android/gms/internal/zzbmt;JJ)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

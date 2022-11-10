<div>
	
	<div><strong>Tên phim:</strong>	{{ $movie->title }}</div>
	<div><strong>Mô tả phim:</strong>{!! $movie->description !!}</div>
	@if(isset($movie->danhgia))<div><strong>Đánh giá phim:</strong>{!! $movie->danhgia !!}</div>@endif
	<div><strong>Thời lượng:</strong>	{{ $movie->thoiluong }}</div>
	<div><strong>Tags phim:</strong >	<span class="badge badge-dark">{{ $movie->tags }}</span></div>
	<div><strong>Độ phân giải:</strong>	@if($movie->resolution==0)
            HD
        @elseif($movie->resolution==1)
        	SD
        @elseif($movie->resolution==2)
        	HDCam
        @elseif($movie->resolution==3)
        	Cam
        @elseif($movie->resolution==4)
        	FullHD
        @else
            Trailer
        @endif</div>
	<div><strong>Hãng phim:</strong>	{{ $movie->filmstudio }}</div>
	<div><strong>Đạo diễn:</strong>	{{ $movie->director }}</div>
	<div><strong>Diễn viên:</strong>	{{ $movie->movieactor }}</div>
	<div><strong>Ngày phát hành:</strong>{{ $movie->releasedate }}</div>
	<div><strong>Đường dẫn:</strong>{{ $movie->slug }}</div>
</div>

